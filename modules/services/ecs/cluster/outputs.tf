output "output" {
  value = aws_ecs_cluster.cluster
}

output "namespace" {
  value = aws_service_discovery_http_namespace.namespace
}