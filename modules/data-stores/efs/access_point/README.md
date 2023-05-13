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
| [aws_efs_access_point.path](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_filesystem_id"></a> [filesystem\_id](#input\_filesystem\_id) | aws\_efs\_file\_system.filesystem.id | `string` | `"filesystem_id_here"` | no |
| <a name="input_folder_name"></a> [folder\_name](#input\_folder\_name) | n/a | `string` | `"/"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"Jesse Gersenson"` | no |
| <a name="input_path"></a> [path](#input\_path) | n/a | `string` | `"/"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | <pre>[<br>  "security_group1",<br>  "security_group2"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"ws-mxv"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | `"my-subnet"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->