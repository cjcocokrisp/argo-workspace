# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout d35edae5d0d4a690dafe9f4ece8dc261f56e0608
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
