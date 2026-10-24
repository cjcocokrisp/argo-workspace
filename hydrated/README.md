# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 2c13a9317a8f7bcba5ac89a75c71109482a9ab36
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
