terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source                               = "../../../modules/network/vpc"
  region                               = var.region
  network_basename                     = var.network_basename
  environment                          = var.environment
  base_subnet                          = var.base_subnet
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  managed_by                           = var.managed_by
}
