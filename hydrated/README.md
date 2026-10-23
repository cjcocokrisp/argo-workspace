# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 93f587150cc03998e1bb48d5bd4d9034bd7e1e0e
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
