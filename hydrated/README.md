# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 1666caee347144d541de791babf690cceaf39753
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
