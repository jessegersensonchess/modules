output "filesystem_id" {
  value       = aws_efs_file_system.filesystem.id
  description = "EFS filesystem id"
}

output "output" {
  value       = aws_efs_file_system.filesystem
  description = "EFS filesystem output. See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system"
}

