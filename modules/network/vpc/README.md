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
| [aws_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route.public_route_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.public_route_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.private_route_table_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.private_route_table_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_route_table_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_route_table_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private_subnet_1_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_subnet_2_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_1_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_subnet_2_route_table_association](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private_subnet_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_generated_ipv6_cidr_block"></a> [assign\_generated\_ipv6\_cidr\_block](#input\_assign\_generated\_ipv6\_cidr\_block) | (Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. | `bool` | `false` | no |
| <a name="input_base_subnet"></a> [base\_subnet](#input\_base\_subnet) | First two octets of subnets | `string` | `"10.10"` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | (Optional) A boolean flag to enable/disable DNS hostnames in the VPC | `bool` | `true` | no |
| <a name="input_enable_dns_support"></a> [enable\_dns\_support](#input\_enable\_dns\_support) | (Optional) A boolean flag to enable/disable DNS support in the VPC | `bool` | `true` | no |
| <a name="input_enable_network_address_usage_metrics"></a> [enable\_network\_address\_usage\_metrics](#input\_enable\_network\_address\_usage\_metrics) | True will enable network address usage metrics | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (Optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"dev"` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | (Optional) A tenancy option for instances launched into the VPC. Default is default, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is dedicated, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. | `string` | `"default"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | entity managing this resource. Value appears as a meta tag with key Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_network_basename"></a> [network\_basename](#input\_network\_basename) | prefix for network name | `string` | `"Common"` | no |
| <a name="input_private_subnet_a_map_public_ip_on_launch"></a> [private\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_a\_map\_public\_ip\_on\_launch) | (Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `bool` | `false` | no |
| <a name="input_private_subnet_b_map_public_ip_on_launch"></a> [private\_subnet\_b\_map\_public\_ip\_on\_launch](#input\_private\_subnet\_b\_map\_public\_ip\_on\_launch) | (Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `bool` | `false` | no |
| <a name="input_public_subnet_a_map_public_ip_on_launch"></a> [public\_subnet\_a\_map\_public\_ip\_on\_launch](#input\_public\_subnet\_a\_map\_public\_ip\_on\_launch) | (Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region for this resource | `string` | `"eu-west-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_private_route_table_a_id"></a> [aws\_private\_route\_table\_a\_id](#output\_aws\_private\_route\_table\_a\_id) | Route table id for private route A |
| <a name="output_aws_private_route_table_b_id"></a> [aws\_private\_route\_table\_b\_id](#output\_aws\_private\_route\_table\_b\_id) | Route table id for private route B. |
| <a name="output_output"></a> [output](#output\_output) | All output from VPC |
| <a name="output_private_subnet_a"></a> [private\_subnet\_a](#output\_private\_subnet\_a) | The ID of private subnet A |
| <a name="output_private_subnet_b"></a> [private\_subnet\_b](#output\_private\_subnet\_b) | The ID of private subnet B |
| <a name="output_public_subnet_a"></a> [public\_subnet\_a](#output\_public\_subnet\_a) | The ID of public subnet A |
| <a name="output_public_subnet_b"></a> [public\_subnet\_b](#output\_public\_subnet\_b) | The ID of public subnet B |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | The ID of the VPC |
<!-- END_TF_DOCS -->