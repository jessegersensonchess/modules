output "sns_topic_arn" {
  value       = aws_sns_topic.sns_topic.arn
  description = "SNS topic arn"

}

output "sns_subscription_arn" {
  value       = aws_sns_topic_subscription.subscription.arn
  description = ""
}

