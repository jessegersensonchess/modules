output "vpc_id" {
  value = module.vpc.vpc_id
}

output "output" {
  value = module.vpc.output
}

output "cidr_block" {
  value = module.vpc.output.cidr_block
}

output "enable_dns_hostnames" {
  value = module.vpc.output.enable_dns_hostnames
}

output "enable_dns_support" {
  value = module.vpc.output.enable_dns_support
}

output "enable_network_address_usage_metrics" {
  value = module.vpc.output.enable_network_address_usage_metrics
}

output "managed_by" {
  value = module.vpc.output.tags["Managed_By"]
}

output "environment" {
  value = module.vpc.output.tags["Environment"]
}

output "name" {
  value = module.vpc.output.tags["Name"]
}



