output "scan_on_push" {
  value = module.ecr.output.image_scanning_configuration[0]["scan_on_push"]
}

output "name" {
  value = module.ecr.output.name
}

output "url" {
  value = module.ecr.url
}

output "environment" {
  value = module.ecr.output.tags["Environment"]
}

output "encryption_type" {
  value = module.ecr.output.encryption_configuration[0]["encryption_type"]

}

output "image_tag_mutability" {
  value = module.ecr.output.image_tag_mutability
}

output "force_delete" {
  value = module.ecr.output.force_delete
}

