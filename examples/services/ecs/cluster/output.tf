output "cluster-name" {
  value = module.cluster.output.name
}

output "output" {
  value = module.cluster.output
}

output "service" {
  value = module.cluster.output.tags["Service"]
}

output "environment" {
  value = module.cluster.output.tags["Environment"]
}

output "managed_by" {
  value = module.cluster.output.tags["Managed_By"]
}

output "tags" {
  value = module.cluster.output.tags
}

output "owner" {
  value = module.cluster.output.tags["Owner"]
}
