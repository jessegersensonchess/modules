terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

data "aws_region" "current" {
  name = var.region
}

module "vpc" {
  source                               = "../../../modules/network/vpc"
  region                               = var.region
  availability_zones                   = ["${var.region}a", "${var.region}b"]
  network_basename                     = var.network_basename
  environment                          = var.environment
  base_subnet                          = var.base_subnet
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  managed_by                           = var.managed_by
}
