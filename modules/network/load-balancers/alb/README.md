<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.64.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_desync_mitigation_mode"></a> [desync\_mitigation\_mode](#input\_desync\_mitigation\_mode) | (Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest | `string` | `"defensive"` | no |
| <a name="input_drop_invalid_header_fields"></a> [drop\_invalid\_header\_fields](#input\_drop\_invalid\_header\_fields) | (Optional) Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type application | `bool` | `true` | no |
| <a name="input_enable_cross_zone_load_balancing"></a> [enable\_cross\_zone\_load\_balancing](#input\_enable\_cross\_zone\_load\_balancing) | (Optional) If true, cross-zone load balancing of the load balancer will be enabled. For network and gateway type load balancers, this feature is disabled by default (false). For application load balancer this feature is always enabled (true) and cannot be disabled. | `bool` | `true` | no |
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | (Optional) If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer | `bool` | `false` | no |
| <a name="input_enable_http2"></a> [enable\_http2](#input\_enable\_http2) | (Optional) Indicates whether HTTP/2 is enabled in application load balancers. | `bool` | `true` | no |
| <a name="input_enable_waf_fail_open"></a> [enable\_waf\_fail\_open](#input\_enable\_waf\_fail\_open) | (Optional) Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF | `bool` | `false` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | `"dev"` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | (Optional) If true, the LB will be internal | `bool` | `false` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | (Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack | `string` | `"ipv4"` | no |
| <a name="input_lb_idle_timeout"></a> [lb\_idle\_timeout](#input\_lb\_idle\_timeout) | (Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application | `number` | `30` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | (Optional) The type of load balancer to create. Possible values are application, gateway, or network. The default value is application. | `string` | `"application"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | entity managing this resource. Value appears as a meta tag with key Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"owner"` | no |
| <a name="input_preserve_host_header"></a> [preserve\_host\_header](#input\_preserve\_host\_header) | (Optional) Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change. | `bool` | `false` | no |
| <a name="input_security-groups"></a> [security-groups](#input\_security-groups) | (Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application | `list(string)` | <pre>[<br>  "my-security-groups"<br>]</pre> | no |
| <a name="input_service"></a> [service](#input\_service) | (optional) Service which uses this resource. Value appears as a tag with key Service | `string` | `"my-service"` | no |
| <a name="input_subnet_id_a"></a> [subnet\_id\_a](#input\_subnet\_id\_a) | ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone. | `string` | `"my-subnet-a"` | no |
| <a name="input_subnet_id_b"></a> [subnet\_id\_b](#input\_subnet\_id\_b) | ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone. | `string` | `"my-subnet-b"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_dns_name"></a> [dns\_name](#output\_dns\_name) | n/a |
| <a name="output_output"></a> [output](#output\_output) | n/a |
<!-- END_TF_DOCS -->