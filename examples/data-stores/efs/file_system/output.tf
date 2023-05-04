output "output" {
  value = module.efs.output
}

output "encrypted" {
  value = module.efs.output.encrypted
}

output "dns_name" {
  value = module.efs.output.dns_name
}

output "service" {
  value = module.efs.output.tags["Service"]
}

output "environment" {
  value = module.efs.output.tags["Environment"]
}

output "managed_by" {
  value = module.efs.output.tags["Managed_By"]
}

output "tags" {
  value = module.efs.output.tags
}

output "owner" {
  value = module.efs.output.tags["Owner"]
}

