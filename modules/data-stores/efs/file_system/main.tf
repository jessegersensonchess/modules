terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.64.0"
    }
  }
}

resource "aws_efs_file_system" "filesystem" {
  encrypted        = var.encrypted
  throughput_mode  = var.throughput_mode
  performance_mode = var.performance_mode

  tags = {
    Name           = var.service
    Owner          = var.owner
    Service        = var.service
    Environment    = var.environment
    safe_to_delete = var.safe_to_delete
    Managed_By     = var.managed_by
  }
}

resource "aws_efs_mount_target" "mount_target_a" {
  file_system_id  = aws_efs_file_system.filesystem.id
  subnet_id       = var.public_subnet_a
  security_groups = var.security_groups
}

resource "aws_efs_mount_target" "mount_target_b" {
  file_system_id  = aws_efs_file_system.filesystem.id
  subnet_id       = var.public_subnet_b
  security_groups = var.security_groups
}
