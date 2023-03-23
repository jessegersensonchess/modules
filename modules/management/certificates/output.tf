output "ssl-certificate-domain-name" {
  value = aws_acm_certificate.ssl-certificate.domain_name
  #sensitive = true
}

output "arn" {
  value = aws_acm_certificate.ssl-certificate.arn
}