local k = (import 'k.libsonnet');

{
  local deployment = k.apps.v1.deployment,
  local container = k.core.v1.container,
  local containerPort = k.core.v1.containerPort,

  _config+:: {
    namespace: 'default'
  },

  _images+:: {
    nginx: 'nginx:alpine'
  },

  ns: k.core.v1.namespace.new($._config.namespace),

  container::
    container.new('nginx', $._images.nginx)
    + container.withPorts([
      containerPort.newNamed(80, 'http'),
    ]),

  deployment: deployment.new('nginx', containers=[self.container]),
}
