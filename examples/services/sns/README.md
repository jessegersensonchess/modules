<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sns"></a> [sns](#module\_sns) | ../../../modules/services/sns | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_endpoint"></a> [email\_endpoint](#input\_email\_endpoint) | Email endpoint for the SNS subscription | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region for the resources | `string` | n/a | yes |
| <a name="input_sns_protocol"></a> [sns\_protocol](#input\_sns\_protocol) | Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported. | `string` | `"email"` | no |
| <a name="input_sns_topic_name"></a> [sns\_topic\_name](#input\_sns\_topic\_name) | Name of the SNS Topic | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sns_subscription_arn"></a> [sns\_subscription\_arn](#output\_sns\_subscription\_arn) | n/a |
| <a name="output_sns_topic_arn"></a> [sns\_topic\_arn](#output\_sns\_topic\_arn) | SNS topic arn |
<!-- END_TF_DOCS -->