terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #      version = "~> 4.64.0"
    }
  }
}

resource "aws_ecs_cluster_capacity_providers" "capacity-providers" {
  cluster_name       = aws_ecs_cluster.cluster.name
  capacity_providers = var.capacity-providers
  default_capacity_provider_strategy {
    base              = var.capacity_provider_base
    weight            = var.capacity_provider_weight
    capacity_provider = var.default-capacity-provider
  }
}

resource "aws_ecs_cluster" "cluster" {
  name = var.cluster-name

  configuration {
    execute_command_configuration {
      logging = var.logging
    }
  }

  service_connect_defaults {
    namespace = aws_service_discovery_http_namespace.namespace.arn
  }

  setting {
    name  = "containerInsights"
    value = var.containerInsights-value
  }

  tags = {
    Name        = var.cluster-name
    APP         = var.service
    Description = var.description
    Owner       = var.owner
    Created_By  = var.created-by
    Environment = var.environment
  }
}

resource "aws_service_discovery_http_namespace" "namespace" {
  name        = "${var.environment}-${var.service}"
  description = "${var.environment} namespace for service ${var.service} in cluster ${var.cluster-name}"
  tags = {
    Name        = "${var.environment}-${var.service}"
    Created_By  = var.created-by
    Environment = var.environment
    Owner       = var.owner
    Managed_By  = var.managed-by
  }
}

