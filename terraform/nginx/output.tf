output "external_port" {
  value = docker_container.nginx.ports[0].external
}