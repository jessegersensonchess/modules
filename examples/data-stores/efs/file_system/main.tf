terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

locals {
  default_cidr = "0.0.0.0/0"
  base_subnet  = var.base_subnet
  az_a         = "${data.aws_region.current.name}a"
  az_b         = "${data.aws_region.current.name}b"
}

data "aws_region" "current" {
  name = var.region
}

module "vpc" {
  source             = "../../../../modules/network/vpc"
  region             = var.region
  availability_zones = ["${var.region}a", "${var.region}b"]
  network_basename   = var.network_basename
  environment        = var.environment
  base_subnet        = local.base_subnet
}

module "efs" {
  source           = "../../../../modules/data-stores/efs/file_system"
  service          = var.service
  environment      = var.environment
  owner            = var.owner
  encrypted        = var.encrypted
  performance_mode = var.performance_mode
  throughput_mode  = var.throughput_mode
  managed_by       = var.managed_by
  folder_name      = var.folder_name

  public_subnet_a = module.vpc.public_subnet_a
  public_subnet_b = module.vpc.public_subnet_b
  security_groups = [] #var.security_groups
}


