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
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ../../../modules/services/ecr | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | n/a | `string` | `"KMS"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"my-env"` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | n/a | `bool` | `false` | no |
| <a name="input_image_tag_mutability"></a> [image\_tag\_mutability](#input\_image\_tag\_mutability) | n/a | `string` | `"MUTABLE"` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | `"name-missing"` | no |
| <a name="input_region"></a> [region](#input\_region) | cloud provider region resources will be placed, queried, etc | `string` | `"eu-west-2"` | no |
| <a name="input_scan_on_push"></a> [scan\_on\_push](#input\_scan\_on\_push) | n/a | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_encryption_type"></a> [encryption\_type](#output\_encryption\_type) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_force_delete"></a> [force\_delete](#output\_force\_delete) | n/a |
| <a name="output_image_tag_mutability"></a> [image\_tag\_mutability](#output\_image\_tag\_mutability) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_scan_on_push"></a> [scan\_on\_push](#output\_scan\_on\_push) | n/a |
| <a name="output_url"></a> [url](#output\_url) | n/a |
<!-- END_TF_DOCS -->