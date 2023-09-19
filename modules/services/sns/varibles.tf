variable "sns_topic_name" {
  description = "Name of the SNS Topic"
  type        = string
}

variable "email_endpoint" {
  description = "Email endpoint for the SNS subscription"
  type        = string
}

variable "region" {
  description = "AWS Region for the resources"
  type        = string
}

