# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 79552fd70a8dd6e1b2e0980eb91ae3e5411bf0e1
helm template . --name-template promoter-demo --namespace openshift-gitops --set replicas=3 --set "keyvalue=hello everyone!" --include-crds
```
