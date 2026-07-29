# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 3f0b96022ddcee674657befd1b9ccccf5da298ec
helm template . --name-template operator-deployed-promotions --namespace default --set replicas=3 --set "keyvalue=these promotions were done through argocd operator deployed instances" --include-crds
```
