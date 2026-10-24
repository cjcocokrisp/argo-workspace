# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 3a7b2f2882654a3db0e0c077c83e8f3982aa67e1
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
