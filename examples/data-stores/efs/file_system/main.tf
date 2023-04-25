terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

module "efs" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/file_system"#?refv0.0.17"
  source          = "../../../../modules/data-stores/efs/file_system"
  service         = var.service
  environment     = var.environment
  public_subnet_a = module.vpc.public_subnet_a
  public_subnet_b = module.vpc.public_subnet_b
  security_groups = [] #var.security_groups
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
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/network/vpc?ref=v0.0.20"
  source             = "../../../../modules/network/vpc"
  region             = var.region
  availability_zones = ["${var.region}a", "${var.region}b"]
  network_basename   = var.network_basename
  environment        = var.environment
  base_subnet        = local.base_subnet
}
