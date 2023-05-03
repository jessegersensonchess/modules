output "dns_name" {
  value = module.load-balancer.dns_name
}

output "region" {
  value = var.region
}


output "arn" {
  value = module.load-balancer.arn
}

output "output" {
  value = module.load-balancer
}

output "service" {
  value = module.load-balancer.output.tags["Service"]
}

output "owner" {
  value = module.load-balancer.output.tags["Owner"]
}

output "managed_by" {
  value = module.load-balancer.output.tags["Managed_By"]
}

output "environment" {
  value = module.load-balancer.output.tags["Environment"]
}

output "drop_invalid_header_fields" {
  value = module.load-balancer.output.drop_invalid_header_fields
}

output "preserve_host_header" {
  value = module.load-balancer.output.preserve_host_header
}
output "ip_address_type" {
  value = module.load-balancer.output.ip_address_type
}

output "idle_timeout" {
  value = module.load-balancer.output.idle_timeout
}

output "enable_http2" {
  value = module.load-balancer.output.enable_http2
}

output "enable_deletion_protection" {
  value = module.load-balancer.output.enable_deletion_protection
}

output "enable_cross_zone_load_balancing" {
  value = module.load-balancer.output.enable_cross_zone_load_balancing
}

output "name" {
  value = module.load-balancer.output.name
}

output "load_balancer_type" {
  value = module.load-balancer.output.load_balancer_type
}


