# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout ce8a68a58a06dc4da246ec330153fb43277697de
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
