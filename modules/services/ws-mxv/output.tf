output "ecr-repository_url" {
  value       = module.ecr.url
  description = "ECR repository URL"
}

output "efs-filesystem-id" {
  value       = module.efs.filesystem_id
  description = "EFS filesystem ID"
}

output "output" {
  value       = module.efs.output
  description = "All EFS output"
}

output "efs-filesystem" {
  value       = module.efs.output
  description = "All EFS output. Depreciated, this output will be removed. Use 'output'"
}

output "target_group" {
  value       = module.target-group.target_group
  description = "target group"
}


