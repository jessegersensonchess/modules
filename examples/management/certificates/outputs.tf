output "output" {
  value = module.ssl-certificate
}

output "ssl-certificate-domain-name" {
  value = module.ssl-certificate.ssl-certificate-domain-name
  #sensitive = true
}


output "arn" {
  value = module.ssl-certificate.arn
}

output "id" {
  value = module.ssl-certificate.id
}

output "status" {
  value = module.ssl-certificate.status
}

output "region" {
  value = var.region
}

#output "service" {
#  value = module.ssl-certificate.tags["Service"]
#}

#output "owner" {
#  value = module.load-balancer.output.tags["Owner"]
#}
#
#output "managed_by" {
#  value = module.load-balancer.output.tags["Managed_By"]
#}
#
#output "environment" {
#  value = module.load-balancer.output.tags["Environment"]
#}

