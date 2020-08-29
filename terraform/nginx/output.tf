output "external_port" {
  value = docker_container.nginx.ports[0].external
}

output "port_protocol" {
  value = docker_container.nginx.ports[0].protocol
}

