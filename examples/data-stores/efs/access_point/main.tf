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
  environment = var.environment
  #owner       = var.owner
  service = var.service
  #region                     = var.region
  #enable_deletion_protection = false

  #any_port     = 0
  #any_protocol = "-1"

  #containerInsights-value   = "disabled"
  #capacity-providers        = ["FARGATE_SPOT"]
  #default-capacity-provider = "FARGATE_SPOT"
  #safe_to_delete-listener   = "yes"
  #managed_by                = "Terraform"
  #force_delete              = true
  #safe_to_delete            = true
  #lb_listener_port          = 443
  #target-group-port         = 1230
}


module "efs-access_point-bin" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/access_point"#?refv0.0.17"
  source        = "../../../../modules/data-stores/efs/access_point"
  service       = local.service
  path          = "/bin"
  filesystem_id = module.efs.filesystem_id
  environment   = local.environment
}

module "efs" {
  #source = "git::https://github.com/jessegersensonchess/terraform.git//modules/data-stores/efs/file_system"#?refv0.0.17"
  source          = "../../data-stores/efs/file_system"
  service         = local.service
  environment     = local.environment
  public_subnet_a = var.public_subnet_a
  public_subnet_b = var.public_subnet_b
  security_groups = var.security_groups
}
