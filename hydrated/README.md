# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 5720eb7a9ec5c9beae10646ea932a3b3858f1e66
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
