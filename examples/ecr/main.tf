terraform {
  # This module is now only being tested with Terraform 1.1.x. However, to make upgrading easier, we are setting 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = "eu-west-2"
}

module "ecr" {
  source       = "../../modules/services/ecr"
  name         = var.name #"myname" # local.service
  environment  = "dev"    # local.environment
  force_delete = true     # var.force_delete
  scan_on_push = false    # var.scan_on_push
}

