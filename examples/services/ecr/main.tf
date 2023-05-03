terraform {
  # This module is tested with Terraform 1.x.x. However, to make upgrading easier, we set 1.0.0 as the minimum version.
  required_version = ">= 1.0.0"
}

provider "aws" {
  region = var.region
}

module "ecr" {
  source               = "../../../modules/services/ecr"
  name                 = var.name
  environment          = var.environment
  force_delete         = var.force_delete
  scan_on_push         = var.scan_on_push
  encryption_type      = var.encryption_type
  image_tag_mutability = var.image_tag_mutability
}
