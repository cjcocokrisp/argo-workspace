# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout f440b5ee101391554531f02665ee142be6edf182
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
