# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout dc0a21cd9308c42235fdca564ea058c301707259
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
