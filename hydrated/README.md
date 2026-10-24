# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 1eeb787032352faaf3a1cf9ac5032ccbb9182f2e
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
