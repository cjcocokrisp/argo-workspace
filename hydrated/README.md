# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 98b71f769e1f174d91cb5431b2ca19b3a5eaff87
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
