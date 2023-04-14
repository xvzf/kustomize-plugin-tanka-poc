# Kustomize Plugin for Tanka

This is an example on how to use a Kustomize [ExecPlugin](https://kubectl.docs.kubernetes.io/guides/extending_kustomize/exec_plugins/) (which will be [graduated](https://kubectl.docs.kubernetes.io/guides/extending_kustomize/exec_plugins/) :tada:) for integrating Tanka Environments with Kustomize


The plugin is located in `plugin/tanka/v1alpha1/environment/Environment` and called by `tk-env.yaml`
