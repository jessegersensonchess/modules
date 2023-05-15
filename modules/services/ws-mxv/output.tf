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

output "efs-accesspoint-bin" {
  value       = module.efs-access_point-bin.output["id"]
  description = "Access point id for /bin"
}

output "efs-accesspoint-config" {
  value       = module.efs-access_point-config.output["id"]
  description = "Access point id for /config"
}

output "efs-accesspoint-logs" {
  value       = module.efs-access_point-logs.output["id"]
  description = "Access point id for /logs"
}

