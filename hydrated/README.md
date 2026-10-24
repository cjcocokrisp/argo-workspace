# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 8733930b504c758dfa45c5bba48886cd54187bd0
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
