# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 6b2472bbb822dc20eeef79b6a6ec5ff7449ee0db
helm template . --name-template tcs-test-app --namespace tcs-testing --set replicas=1 --include-crds
```
