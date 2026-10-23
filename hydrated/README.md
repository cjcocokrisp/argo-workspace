# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 56615fd6e06e9770f542947a480d7bc432686e97
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
