output "output" {
  value       = aws_ecs_cluster.cluster
  description = "output from aws_ecs_cluster"
}

output "namespace" {
  value       = aws_service_discovery_http_namespace.namespace
  description = "Name of the http namespace."
}
