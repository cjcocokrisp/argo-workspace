# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 77f05662212b7aa4472cc7e73045fd8d956baad6
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
