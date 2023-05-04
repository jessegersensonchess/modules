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

