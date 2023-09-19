provider "aws" {
  region = var.region
}

resource "aws_sns_topic" "sns_topic" {
  name = var.sns_topic_name
  # tags
}

resource "aws_sns_topic_subscription" "sns_topic_subscription" {
  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = var.sns_protocol
  endpoint  = var.email_endpoint
}

