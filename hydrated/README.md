# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 0b7ced2dfc792d3a944ad3ec18f707e3ad952d8a
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
