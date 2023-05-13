<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.ssl-certificate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | `"description"` | no |
| <a name="input_domain-name"></a> [domain-name](#input\_domain-name) | n/a | `string` | `"mydomain.name"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"env"` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | n/a | `string` | `"RSA_2048"` | no |
| <a name="input_logging-preference"></a> [logging-preference](#input\_logging-preference) | n/a | `string` | `"ENABLED"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"owner"` | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"service"` | no |
| <a name="input_validation-method"></a> [validation-method](#input\_validation-method) | n/a | `string` | `"EMAIL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_ssl-certificate-domain-name"></a> [ssl-certificate-domain-name](#output\_ssl-certificate-domain-name) | n/a |
| <a name="output_status"></a> [status](#output\_status) | n/a |
<!-- END_TF_DOCS -->