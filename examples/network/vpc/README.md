<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.65.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../../modules/network/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | n/a | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | n/a | `list` | <pre>[<br>  "eu-west-2a",<br>  "eu-west-2b"<br>]</pre> | no |
| <a name="input_base_subnet"></a> [base\_subnet](#input\_base\_subnet) | n/a | `string` | `"10.90"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | n/a | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | n/a | `bool` | `true` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | n/a | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | n/a | `string` | `"default"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_network_basename"></a> [network\_basename](#input\_network\_basename) | n/a | `string` | `"terratest-disposable"` | no |
| <a name="input_private_subnet_a_map_public_ip_on_launch"></a> [private\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_a\_map\_public\_ip\_on\_launch) | n/a | `bool` | `false` | no |
| <a name="input_private_subnet_b_map_public_ip_on_launch"></a> [private\_subnet\_b\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_b\_map\_public\_ip\_on\_launch) | n/a | `bool` | `false` | no |
| <a name="input_public_subnet_a_map_public_ip_on_launch"></a> [public\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_public\_subnet\_a\_map\_public\_ip\_on\_launch) | n/a | `bool` | `true` | no |
| <a name="input_public_subnet_b_map_public_ip_on_launch"></a> [public\_subnet\_b\_map\_public\_ip\_on\_launch](#input\_public\_subnet\_b\_map\_public\_ip\_on\_launch) | n/a | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cidr_block"></a> [cidr\_block](#output\_cidr\_block) | n/a |
| <a name="output_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#output\_enable\_dns\_hostnames) | n/a |
| <a name="output_enable_dns_support"></a> [enable\_dns\_support](#output\_enable\_dns\_support) | n/a |
| <a name="output_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#output\_enable\_network\_address\_usage\_metrics) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_managed_by"></a> [managed\_by](#output\_managed\_by) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->