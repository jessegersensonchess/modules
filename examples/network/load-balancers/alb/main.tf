terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region # "eu-west-2"
}

locals {
  default_cidr     = "0.0.0.0/0"
  base_subnet      = var.base_subnet # "10.87"
  az_a             = "${data.aws_region.current.name}a"
  az_b             = "${data.aws_region.current.name}b"
  region           = var.region
  network_basename = "terratest-lb"
}

data "aws_region" "current" {
  name = local.region
}

#### vpc is required to make a load balancer ####
module "vpc" {
  source           = "../../../../modules/network/vpc"
  region           = local.region
  network_basename = local.network_basename
  environment      = var.environment
  base_subnet      = local.base_subnet
}

module "load-balancer" {
  source                     = "../../../../modules/network/load-balancers/alb"
  service                    = var.service
  subnet_id_a                = module.vpc.public_subnet_a
  subnet_id_b                = module.vpc.public_subnet_b
  security-groups            = []
  lb_idle_timeout            = var.lb_idle_timeout
  environment                = var.environment
  drop_invalid_header_fields = var.drop_invalid_header_fields
  enable_deletion_protection = var.enable_deletion_protection
  preserve_host_header       = var.preserve_host_header
  managed_by                 = var.managed_by
  owner                      = var.owner

}
