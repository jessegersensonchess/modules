terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = local.region # "eu-west-2"
}

locals {
  default_cidr     = "0.0.0.0/0"
  base_subnet      = "10.87"
  az_a             = "${data.aws_region.current.name}a"
  az_b             = "${data.aws_region.current.name}b"
  region           = "eu-west-2"
  network_basename = "terratest-lb"
}

data "aws_region" "current" {
  name = local.region
}

#### vpc is required to make a load balancer ####
module "vpc" {
  source             = "../../../../modules/network/vpc"
  region             = local.region
  availability_zones = ["${local.region}a", "${local.region}b"]
  network_basename   = local.network_basename
  environment        = var.environment
  base_subnet        = local.base_subnet
}

module "load-balancer" {
  source                     = "../../../../modules/network/load-balancers/alb"
  service                    = var.service
  subnet_id_a                = module.vpc.public_subnet_a
  subnet_id_b                = module.vpc.public_subnet_b
  security-groups            = []
  enable_deletion_protection = false
}
