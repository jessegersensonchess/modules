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
| [aws_ecr_repository.repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | n/a | `string` | `"AES256"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | allow container registry to be deleted even if it contains images | `bool` | `false` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | n/a | `string` | `"MUTABLE"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | used to tag resource for organization purposes only | `string` | `"Terraform"` | no |
| <a name="input_name"></a> [name](#input\_name) | name of the ECR repository | `string` | `"name-missing"` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | bool run security scan when image is pushed | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ECR repository arn |
| <a name="output_output"></a> [output](#output\_output) | all output from aws\_ecr\_repository |
| <a name="output_url"></a> [url](#output\_url) | ECR repository url |
<!-- END_TF_DOCS -->