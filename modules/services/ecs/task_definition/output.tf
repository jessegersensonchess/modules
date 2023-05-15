output "output" {
  value       = aws_ecs_task_definition.definition
  description = "output from aws_ecs_task_definition"
}

output "container_name" {
  value       = var.container_name
  description = "container name"
}
