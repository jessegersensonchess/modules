output "ecr-repository_url" {
  value = module.ecr.aws_ecr_id.repository_url
}

output "efs-filesystem-id" {
  value = module.efs.filesystem_id
}

output "efs-filesystem" {
  value = module.efs.filesystem
}

output "efs-accesspoint-bin" {
  value = module.efs-access_point-bin.output["id"]
}

output "efs-accesspoint-config" {
  value = module.efs-access_point-config.output["id"]
}

output "efs-accesspoint-logs" {
  value = module.efs-access_point-logs.output["id"]
}

