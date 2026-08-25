# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout c1e57de62e5ce08552e69c47e51cdf5176866e5b
helm template . --name-template promoter-demo --namespace promotions --set replicas=2 --set "keyvalue=hello everyone!" --include-crds
```
