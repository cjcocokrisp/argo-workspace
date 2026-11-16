# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 652121a2240eb08513472cd0062039e1290b2075
helm template . --name-template scs-test-app --namespace scs-testing --set replicas=1 --include-crds
```
