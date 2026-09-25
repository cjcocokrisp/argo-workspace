# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 3fbfa93403f3b28e6969bec5714e63409683a407
helm template . --name-template promoter-demo --namespace openshift-gitops --set replicas=3 --set "keyvalue=hello everyone!" --include-crds
```
