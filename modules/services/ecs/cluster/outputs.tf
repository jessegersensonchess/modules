output "output" {
  value = aws_ecs_cluster.cluster
}

#output "tags" {
#  value = aws_ecs_cluster.tags
#}

#output "capacity_provider" {
#  value = aws_ecs_cluster.default_capacity_provider_strategy.capacity_provider
#}

output "namespace" {
  value = aws_service_discovery_http_namespace.namespace
}