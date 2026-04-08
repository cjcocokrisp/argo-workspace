#!/bin/bash

# Setup Script for a Round Robin Cluster Sharding Env
# Assumes snap is installed
# !!! DO NOT USE IN PRODUCTION !!! Passwords are hardcoded

VCLUSTERS=$1
SHARDS=$2

set -xe

# Micro K8s setup setup steps do not work well in the script
# For some reason it would terminate on the enable cmds
#
# sudo snap remove microk8s
# sudo snap install microk8s --classic

# sudo microk8s start
# sudo microk8s status --wait-ready

# sudo microk8s enable metallb:192.168.56.200-192.168.56.254
# sudo microk8s enable hostpath-storage

# sudo microk8s disable dns
# sudo microk8s enable dns:8.8.8.8

# sudo mkdir -p ~/.kube && microk8s config >~/.kube/config
# sudo chmod 644 ~/.kube/config

if [[ ! "$VCLUSTERS" =~ ^[0-9]+$ ]]; then
  echo "Invalid Clusters amount should be a number"
  exit 1
fi

if [[ ! "$SHARDS" =~ ^[0-9]+$ ]]; then
  echo "Shard amount should be a number"
  exit 1
fi

for ((i = 1; i <= $VCLUSTERS; i++)); do
  vcluster create argocd-spoke$i -n spoke$i --expose
  kubectl config use-context microk8s
done

kubectl create namespace argocd
kubectl apply -n argocd --server-side --force-conflicts -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'
ARGOCD_IP=$(kubectl get svc argocd-server -n argocd -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')

# Let things get set up
sleep 5s

ARGOCD_TEMP_PWD=$(argocd admin initial-password -n argocd | head -1)
argocd login $ARGOCD_IP --username admin --password $ARGOCD_TEMP_PWD --insecure

argocd account update-password --current-password $ARGOCD_TEMP_PWD --new-password 12345678

for ((i = 1; i <= $VCLUSTERS; i++)); do
  argocd cluster add vcluster_argocd-spoke${i}_spoke${i}_microk8s -y
done

kubectl patch statefulset argocd-application-controller -p '{"spec":{"replicas":$SHARDS}}' -n argocd
kubectl patch statefulset argocd-application-controller -p '{"spec":{"template":{"spec":{"containers":[{"name":"argocd-application-controller","env":[{"name":"ARGOCD_CONTROLLER_REPLICAS","value":"$SHARDS"}]}]}}}}' -n argocd

kubectl patch configmap argocd-cmd-params-cm \
  -n argocd \
  --type merge \
  -p '{"data":{"controller.sharding.algorithm":"round-robin"}}'

kubectl rollout restart statefulset argocd-application-controller -n argocd
