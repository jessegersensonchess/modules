<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |

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
| <a name="input_description"></a> [description](#input\_description) | basic description of resource. Value appears as a meta tag with key Description | `string` | `"description"` | no |
| <a name="input_domain-name"></a> [domain-name](#input\_domain-name) | (Required) Domain name for which the certificate should be issued | `string` | `"mydomain.name"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"env"` | no |
| <a name="input_key_algorithm"></a> [key\_algorithm](#input\_key\_algorithm) | (Optional) Specifies the algorithm of the public and private key pair that your Amazon issued certificate uses to encrypt data. See ACM Certificate characteristics for more details. | `string` | `"RSA_2048"` | no |
| <a name="input_logging-preference"></a> [logging-preference](#input\_logging-preference) | (Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details | `string` | `"ENABLED"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | entity managing this resource. Value appears as a meta tag with key Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"owner"` | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"service"` | no |
| <a name="input_validation-method"></a> [validation-method](#input\_validation-method) | Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform. | `string` | `"DNS"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the certificate |
| <a name="output_id"></a> [id](#output\_id) | ARN of the certificate |
| <a name="output_ssl-certificate-domain-name"></a> [ssl-certificate-domain-name](#output\_ssl-certificate-domain-name) | Domain name for which the certificate should be issued |
| <a name="output_status"></a> [status](#output\_status) | Certificate status |
<!-- END_TF_DOCS -->