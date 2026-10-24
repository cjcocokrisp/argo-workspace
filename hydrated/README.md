# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout a4bcd74da01ceeac2c347a23a5258bb4c70df1c0
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
