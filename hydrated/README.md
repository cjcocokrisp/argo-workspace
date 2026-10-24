# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 242e6c13ad8ef9d92a3337decf9bdc832bb659a3
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
