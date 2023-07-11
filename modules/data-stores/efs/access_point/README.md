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
| [aws_efs_access_point.path](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"dev"` | no |
| <a name="input_filesystem_id"></a> [filesystem\_id](#input\_filesystem\_id) | ID of the file system for which the access point is intended. | `string` | `"filesystem_id_here"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"Jesse Gersenson"` | no |
| <a name="input_path"></a> [path](#input\_path) | Directory on the Amazon EFS file system that the access point provides access to. | `string` | `"/"` | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"ws-mxv"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_output"></a> [output](#output\_output) | access point output. See https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point |
<!-- END_TF_DOCS -->