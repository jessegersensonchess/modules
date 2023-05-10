output "output" {
  value       = aws_ecr_repository.repository
  description = "all output from aws_ecr_repository"
}

output "url" {
  value       = aws_ecr_repository.repository.repository_url
  description = "ECR repository url"
}

output "arn" {
  value       = aws_ecr_repository.repository.arn
  description = "ECR repository arn"
}
