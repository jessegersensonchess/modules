terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

provider "aws" {
  region = var.region # "eu-west-2"

}

locals {
  environment               = var.environment
  owner                     = var.owner
  service                   = var.service
  containerInsights-value   = "disabled"
  capacity-providers        = ["FARGATE_SPOT"]
  default-capacity-provider = "FARGATE_SPOT"
  managed_by                = var.managed_by
  #safe_to_delete            = true
  #lb_listener_port          = 443
  #target-group-port         = 1230
}

module "cluster" {
  source                    = "../../../../modules/services/ecs/cluster"
  description               = "${local.environment} cluster for the ${local.service} service"
  service                   = local.service
  cluster-name              = local.service
  environment               = local.environment
  owner                     = local.owner
  managed_by                = local.managed_by
  containerInsights-value   = local.containerInsights-value
  capacity-providers        = local.capacity-providers
  default-capacity-provider = local.default-capacity-provider
}

