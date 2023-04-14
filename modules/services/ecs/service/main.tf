resource "aws_ecs_service" "service" {
  name            = var.name
  cluster         = var.cluster
  task_definition = var.task_definition

  platform_version    = var.platform_version
  scheduling_strategy = var.scheduling_strategy

  deployment_maximum_percent         = var.deployment_maximum_percent
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  desired_count                      = var.desired_count
  enable_ecs_managed_tags            = var.enable_ecs_managed_tags
  enable_execute_command             = var.enable_execute_command
  health_check_grace_period_seconds  = var.health_check_grace_period_seconds
  launch_type                        = var.launch_type

  force_new_deployment = var.force_new_deployment

  #triggers = {
  #  redeployment = timestamp()
  #}

  deployment_circuit_breaker {
    enable   = var.deployment_circuit_breaker-enable
    rollback = var.deployment_circuit_breaker-rollback
  }

  deployment_controller {
    type = var.deployment_controller-type
  }

  load_balancer {
    container_name   = var.container_name
    container_port   = var.container_port
    target_group_arn = var.target_group_arn
  }

  network_configuration {
    assign_public_ip = var.assign_public_ip
    security_groups  = var.security_groups
    subnets          = var.subnets
  }

  tags = {
    Container   = var.container_name
    Cluster     = var.cluster
    Owner       = var.owner
    Environment = var.environment
  }
}
