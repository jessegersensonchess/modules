output "sns_topic_arn" {
  value       = module.sns["sns_topic_arn"]
  description = "SNS topic arn"

}

output "sns_subscription_arn" {
  value       = module.sns["sns_subscription_arn"]
  description = ""
}

