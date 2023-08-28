<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.11.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_load-balancer"></a> [load-balancer](#module\_load-balancer) | ../../../../modules/network/load-balancers/alb | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../../../modules/network/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_base_subnet"></a> [base\_subnet](#input\_base\_subnet) | n/a | `string` | `"10.87"` | no |
| <a name="input_desync_mitigation_mode"></a> [desync\_mitigation\_mode](#input\_desync\_mitigation\_mode) | n/a | `string` | `"defensive"` | no |
| <a name="input_drop_invalid_header_fields"></a> [drop\_invalid\_header\_fields](#input\_drop\_invalid\_header\_fields) | n/a | `bool` | `false` | no |
| <a name="input_enable_cross_zone_load_balancing"></a> [enable\_cross\_zone\_load\_balancing](#input\_enable\_cross\_zone\_load\_balancing) | n/a | `bool` | `true` | no |
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | n/a | `bool` | `false` | no |
| <a name="input_enable_http2"></a> [enable\_http2](#input\_enable\_http2) | n/a | `bool` | `true` | no |
| <a name="input_enable_waf_fail_open"></a> [enable\_waf\_fail\_open](#input\_enable\_waf\_fail\_open) | n/a | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | n/a | `bool` | `false` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | n/a | `string` | `"ipv4"` | no |
| <a name="input_lb_idle_timeout"></a> [lb\_idle\_timeout](#input\_lb\_idle\_timeout) | n/a | `number` | `30` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | n/a | `string` | `"application"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | n/a | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | n/a | `string` | `"owner"` | no |
| <a name="input_preserve_host_header"></a> [preserve\_host\_header](#input\_preserve\_host\_header) | n/a | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"eu-west-2"` | no |
| <a name="input_security-groups"></a> [security-groups](#input\_security-groups) | n/a | `list(string)` | <pre>[<br>  "my-security-groups"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | n/a | `string` | `"my-service"` | no |
| <a name="input_subnet_id_a"></a> [subnet\_id\_a](#input\_subnet\_id\_a) | n/a | `string` | `"my-subnet-a"` | no |
| <a name="input_subnet_id_b"></a> [subnet\_id\_b](#input\_subnet\_id\_b) | n/a | `string` | `"my-subnet-b"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | n/a | `list(string)` | <pre>[<br>  "my-subnets"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | n/a |
| <a name="output_drop_invalid_header_fields"></a> [drop\_invalid\_header\_fields](#output\_drop\_invalid\_header\_fields) | n/a |
| <a name="output_enable_cross_zone_load_balancing"></a> [enable\_cross\_zone\_load\_balancing](#output\_enable\_cross\_zone\_load\_balancing) | n/a |
| <a name="output_enable_deletion_protection"></a> [enable\_deletion\_protection](#output\_enable\_deletion\_protection) | n/a |
| <a name="output_enable_http2"></a> [enable\_http2](#output\_enable\_http2) | n/a |
| <a name="output_environment"></a> [environment](#output\_environment) | n/a |
| <a name="output_idle_timeout"></a> [idle\_timeout](#output\_idle\_timeout) | n/a |
| <a name="output_ip_address_type"></a> [ip\_address\_type](#output\_ip\_address\_type) | n/a |
| <a name="output_load_balancer_type"></a> [load\_balancer\_type](#output\_load\_balancer\_type) | n/a |
| <a name="output_managed_by"></a> [managed\_by](#output\_managed\_by) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
| <a name="output_owner"></a> [owner](#output\_owner) | n/a |
| <a name="output_preserve_host_header"></a> [preserve\_host\_header](#output\_preserve\_host\_header) | n/a |
| <a name="output_region"></a> [region](#output\_region) | n/a |
| <a name="output_service"></a> [service](#output\_service) | n/a |
<!-- END_TF_DOCS -->