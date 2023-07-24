<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_efs"></a> [efs](#module\_efs) | ../../../../modules/data-stores/efs/file_system | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../../../modules/network/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | n/a | `bool` | `false` | no |
| <a name="input_base_subnet"></a> [base\_subnet](#input\_base\_subnet) | n/a | `string` | `"10.90"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | n/a | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | n/a | `bool` | `true` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | n/a | `bool` | `false` | no |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | n/a | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_filesystem_id"></a> [filesystem\_id](#input\_filesystem\_id) | aws\_efs\_file\_system.filesystem.id | `string` | `"my-subnet"` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | n/a | `string` | `"default"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_network_basename"></a> [network\_basename](#input\_network\_basename) | n/a | `string` | `"terratest-disposable"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"Jesse Gersenson"` | no |
| <a name="input_performance_mode"></a> [performance\_mode](#input\_performance\_mode) | n/a | `string` | `"generalPurpose"` | no |
| <a name="input_private_subnet_a_map_public_ip_on_launch"></a> [private\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_a\_map\_public\_ip\_on\_launch) | n/a | `bool` | `false` | no |
| <a name="input_private_subnet_b_map_public_ip_on_launch"></a> [private\_subnet\_b\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_b\_map\_public\_ip\_on\_launch) | n/a | `bool` | `false` | no |
| <a name="input_public_subnet_a_map_public_ip_on_launch"></a> [public\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_public\_subnet\_a\_map\_public\_ip\_on\_launch) | n/a | `bool` | `true` | no |
| <a name="input_public_subnet_b_map_public_ip_on_launch"></a> [public\_subnet\_b\_map\_public\_ip\_on\_launch](#input\_public\_subnet\_b\_map\_public\_ip\_on\_launch) | n/a | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | n/a | `string` | `"yes"` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | n/a | `list(string)` | <pre>[<br>  "security_group1",<br>  "security_group2"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"ws-mxv"` | no |
| <a name="input_subnet_a"></a> [subnet\_a](#input\_subnet\_a) | n/a | `string` | `"mysubnet"` | no |
| <a name="input_subnet_b"></a> [subnet\_b](#input\_subnet\_b) | n/a | `string` | `"my-subnet"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | n/a | `string` | `"my-subnet"` | no |
| <a name="input_throughput_mode"></a> [throughput\_mode](#input\_throughput\_mode) | n/a | `string` | `"bursting"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | n/a |
| <a name="output_encrypted"></a> [encrypted](#output\_encrypted) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_managed_by"></a> [managed\_by](#output\_managed\_by) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
| <a name="output_owner"></a> [owner](#output\_owner) | n/a |
| <a name="output_service"></a> [service](#output\_service) | n/a |
| <a name="output_tags"></a> [tags](#output\_tags) | n/a |
<!-- END_TF_DOCS -->