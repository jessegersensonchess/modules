output "ssl-certificate-domain-name" {
  value       = aws_acm_certificate.ssl-certificate.domain_name
  description = "Domain name for which the certificate should be issued"
}

output "arn" {
  value       = aws_acm_certificate.ssl-certificate.arn
  description = "Certificate ARN"
}

output "id" {
  value       = aws_acm_certificate.ssl-certificate.id
  description = "Certificate ARN"
}

output "status" {
  value       = aws_acm_certificate.ssl-certificate.status
  description = "Certificate status"
}

