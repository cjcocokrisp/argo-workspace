# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 2425781e59753a4bd973109ea6e73ca453f3f595
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
