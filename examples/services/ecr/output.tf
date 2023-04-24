output "name" {
  value = module.ecr.aws_ecr_repository.name # aws_ecr_repository.repository
}

output "url" {
  value = module.ecr.url # aws_ecr_repository.repository
}

