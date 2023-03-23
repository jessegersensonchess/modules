resource "aws_efs_access_point" "path" {
  file_system_id = var.filesystem_id

  tags = {
    Name           = var.path
    Owner          = var.owner
    Service        = var.service
    Env            = var.environment
    safe_to_delete = "yes"
    Managed_By     = "Terraform"
  }

  posix_user {
    gid = 1000
    uid = 1000
  }

  root_directory {
    path = var.path
  }

}
