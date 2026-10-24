# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout bc2564053c5f62aa75a6387d10ba2b181db2a3b5
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
