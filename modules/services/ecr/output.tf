output "output" {
  value = aws_ecr_repository.repository
}

output "url" {
  value = aws_ecr_repository.repository.repository_url
}

output "arn" {
  value = aws_ecr_repository.repository.arn
}
