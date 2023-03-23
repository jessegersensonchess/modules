output "output" {
  value = aws_ecs_task_definition.definition
}

output "container_name" {
  value = var.container_name
}