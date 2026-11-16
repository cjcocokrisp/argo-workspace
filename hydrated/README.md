# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 2b176b6f5fd399f193e03df10a8b2aa4b8f091d4
helm template . --name-template scs-test-app --namespace scs-testing --set replicas=1 --include-crds
```
