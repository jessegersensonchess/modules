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
| [aws_efs_file_system.filesystem](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system) | resource |
| [aws_efs_mount_target.mount_target_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |
| [aws_efs_mount_target.mount_target_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | true encrypts the filesystem | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | environment of this resource. Value appears as a meta tag with key Environment | `string` | `"dev"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | entity managing this resource. Value appears as a meta tag with key Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | owner of this EFS | `string` | `"Jesse Gersenson"` | no |
| <a name="input_performance_mode"></a> [performance\_mode](#input\_performance\_mode) | defines EFS disk performance | `string` | `"generalPurpose"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | informational only. Used to inform AWS admins whether this resource can be deleted. Value appears as a meta tag with key safe\_to\_delete | `string` | `"yes"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | security groups with access to this EFS | `list(string)` | <pre>[<br>  "security_group1",<br>  "security_group2"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | service which created this EFS. Value appears as a meta tag with key Service | `string` | `"ws-mxv"` | no |
| <a name="input_subnet_a"></a> [subnet\_a](#input\_subnet\_a) | public subnet | `string` | `"mysubnet"` | no |
| <a name="input_subnet_b"></a> [subnet\_b](#input\_subnet\_b) | public subnet | `string` | `"my-subnet"` | no |
| <a name="input_throughput_mode"></a> [throughput\_mode](#input\_throughput\_mode) | defines EFS disk throughput performance | `string` | `"bursting"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_filesystem_id"></a> [filesystem\_id](#output\_filesystem\_id) | EFS filesystem id |
| <a name="output_output"></a> [output](#output\_output) | EFS filesystem output. See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system |
<!-- END_TF_DOCS -->