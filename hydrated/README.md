# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 09e7d05e076eebe3b6926da21a1a0d1c02994b57
helm template . --name-template promoter-demo --namespace promoter --set replicas=3 --set "keyvalue=hello everyone!" --include-crds
```
