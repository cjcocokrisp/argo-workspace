# Manifest Hydration

To hydrate the manifests in this repository, run the following commands:

```shell
git clone https://github.com/cjcocokrisp/argo-workspace.git
# cd into the cloned directory
git checkout 5f57bd78f7ef2118b7f15ce690167ce0e506c1dc
helm template . --name-template operator-deployed-promotions --namespace testing-deploy --set replicas=2 --set "keyvalue=these promotions were done through argocd operator deployed instances of argocd and the gitops promoter" --include-crds
```
