# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 7f5a6d3f3af90250910024bbf644ff2e7943f235
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
