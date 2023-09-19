variable "sns_topic_name" {
  description = "Name of the SNS Topic"
  type        = string
}

variable "email_endpoint" {
  description = "Email endpoint for the SNS subscription"
  type        = string
}

variable "sns_protocol" {
  description = "Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported."
  default     = "email"
  type        = string
}


variable "region" {
  description = "AWS Region for the resources"
  type        = string
}

