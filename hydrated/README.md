# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 5e0aaa43cd8f7da983f04b8ea0e5f2f95c5adc85
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
