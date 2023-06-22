terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

resource "aws_efs_access_point" "path" {
  #count          = var.count
  file_system_id = var.filesystem_id

  tags = {
    Name    = var.path
    Owner   = var.owner
    Service = var.service
    Env     = var.environment
  }

  posix_user {
    gid = 1000
    uid = 1000
  }

  root_directory {
    path = var.path
  }

}
