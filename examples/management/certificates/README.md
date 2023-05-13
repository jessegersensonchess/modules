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
| <a name="module_ssl-certificate"></a> [ssl-certificate](#module\_ssl-certificate) | ../../../modules/management/certificates | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | used for AWS tagging, Description | `string` | `"description"` | no |
| <a name="input_domain-name"></a> [domain-name](#input\_domain-name) | n/a | `string` | `"mydomain.name"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | used for AWS tagging, Environment | `string` | `"env"` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | n/a | `string` | `"RSA_2048"` | no |
| <a name="input_logging-preference"></a> [logging-preference](#input\_logging-preference) | n/a | `string` | `"ENABLED"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | used for AWS tagging, Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | used for AWS tagging, Owner | `string` | `"owner"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_service"></a> [service](#input\_service) | used for AWS tagging, Service | `string` | `"service"` | no |
| <a name="input_validation-method"></a> [validation-method](#input\_validation-method) | Way AWS certificate is approved | `string` | `"DNS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_ssl-certificate-domain-name"></a> [ssl-certificate-domain-name](#output\_ssl-certificate-domain-name) | n/a |
| <a name="output_status"></a> [status](#output\_status) | n/a |
<!-- END_TF_DOCS -->