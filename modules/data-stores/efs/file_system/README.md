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
| [aws_efs_file_system.filesystem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target.mount_target_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |
| [aws_efs_mount_target.mount_target_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | n/a | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_filesystem_id"></a> [filesystem\_id](#input\_filesystem\_id) | aws\_efs\_file\_system.filesystem.id | `string` | `"my-subnet"` | no |
| <a name="input_folder_name"></a> [folder\_name](#input\_folder\_name) | n/a | `string` | `"/"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | owner of this EFS | `string` | `"Jesse Gersenson"` | no |
| <a name="input_performance_mode"></a> [performance\_mode](#input\_performance\_mode) | n/a | `string` | `"generalPurpose"` | no |
| <a name="input_public_subnet_a"></a> [public\_subnet\_a](#input\_public\_subnet\_a) | n/a | `string` | `"mysubnet"` | no |
| <a name="input_public_subnet_b"></a> [public\_subnet\_b](#input\_public\_subnet\_b) | n/a | `string` | `"my-subnet"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | n/a | `string` | `"yes"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | <pre>[<br>  "security_group1",<br>  "security_group2"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | service which created this EFS | `string` | `"ws-mxv"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | `"my-subnet"` | no |
| <a name="input_throughput_mode"></a> [throughput\_mode](#input\_throughput\_mode) | n/a | `string` | `"bursting"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_filesystem_id"></a> [filesystem\_id](#output\_filesystem\_id) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->