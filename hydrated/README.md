# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout ba2f02e8982bf54d9711e3d9d818b5b1e943bf5d
helm template . --name-template scs-test-app --namespace scs-testing --set replicas=1 --include-crds
```
