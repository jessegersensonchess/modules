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
| [aws_lb_target_group.target_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deregistration_delay"></a> [deregistration\_delay](#input\_deregistration\_delay) | Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. | `number` | `300` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | (optional) Environment of the resource. Value appears as a tag with key Environment | `string` | n/a | yes |
| <a name="input_health_check_enabled"></a> [health\_check\_enabled](#input\_health\_check\_enabled) | Whether health checks are enabled. | `string` | `"true"` | no |
| <a name="input_health_check_healthy_threshold"></a> [health\_check\_healthy\_threshold](#input\_health\_check\_healthy\_threshold) | Number of consecutive health check successes required before considering a target healthy. The range is 2-10. | `number` | `3` | no |
| <a name="input_health_check_interval"></a> [health\_check\_interval](#input\_health\_check\_interval) | Approximate amount of time, in seconds, between health checks of an individual target. The range is 5-300. | `number` | `5` | no |
| <a name="input_health_check_matcher"></a> [health\_check\_matcher](#input\_health\_check\_matcher) | Response codes to use when checking for a healthy responses from a target. You can specify multiple values (for example, '200,202' for HTTP(s) or '0,12' for GRPC) or a range of values (for example, '200-299' or '0-99'). Required for HTTP/HTTPS/GRPC ALB. Only applies to Application Load Balancers (i.e., HTTP/HTTPS/GRPC) not Network Load Balancers (i.e., TCP). | `number` | `200` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS. | `string` | `"/my-health-check-path"` | no |
| <a name="input_health_check_port"></a> [health\_check\_port](#input\_health\_check\_port) | The port the load balancer uses when performing health checks on targets | `string` | `"traffic-port"` | no |
| <a name="input_health_check_protocol"></a> [health\_check\_protocol](#input\_health\_check\_protocol) | Protocol the load balancer uses when performing health checks on targets. Must be either TCP, HTTP, or HTTPS | `string` | `"HTTP"` | no |
| <a name="input_health_check_timeout"></a> [health\_check\_timeout](#input\_health\_check\_timeout) | Amount of time, in seconds, during which no response from a target means a failed health check. The range is 2–120 seconds. | `number` | `3` | no |
| <a name="input_health_check_unhealthy_threshold"></a> [health\_check\_unhealthy\_threshold](#input\_health\_check\_unhealthy\_threshold) | Number of consecutive health check failures required before considering a target unhealthy. The range is 2-10. | `number` | `3` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | The type of IP addresses used by the target group, only supported when target type is set to ip. Possible values are ipv4 or ipv6. | `string` | `"ipv4"` | no |
| <a name="input_load_balancing_algorithm_type"></a> [load\_balancing\_algorithm\_type](#input\_load\_balancing\_algorithm\_type) | Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is round\_robin or least\_outstanding\_requests | `string` | `"round_robin"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | entity managing this resource. Value appears as a meta tag with key Managed\_By | `string` | `"Terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | (optional) Owner of the resource. Value appears as a tag with key Owner | `string` | `"service owner"` | no |
| <a name="input_port"></a> [port](#input\_port) | Port on which targets receive traffic, unless overridden when registering a specific target. Required when target\_type is instance, ip or alb. Does not apply when target\_type is lambda | `number` | `1230` | no |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | Protocol to use for routing traffic to the targets. Should be one of GENEVE, HTTP, HTTPS, TCP, TCP\_UDP, TLS, or UDP. Required when target\_type is instance, ip or alb. Does not apply when target\_type is lambda. | `string` | `"HTTP"` | no |
| <a name="input_protocol_version"></a> [protocol\_version](#input\_protocol\_version) | Only applicable when protocol is HTTP or HTTPS. The protocol version. Specify GRPC to send requests to targets using gRPC. Specify HTTP2 to send requests to targets using HTTP/2. | `string` | `"HTTP1"` | no |
| <a name="input_safe_to_delete"></a> [safe\_to\_delete](#input\_safe\_to\_delete) | (optional) Is it ok to destroy this resource? Value appears as a tag with key safe\_to\_delete | `string` | `"yes"` | no |
| <a name="input_slow_start"></a> [slow\_start](#input\_slow\_start) | Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. | `number` | `0` | no |
| <a name="input_stickiness_cookie_duration"></a> [stickiness\_cookie\_duration](#input\_stickiness\_cookie\_duration) | n/a | `number` | `86400` | no |
| <a name="input_stickiness_enabled"></a> [stickiness\_enabled](#input\_stickiness\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_stickiness_type"></a> [stickiness\_type](#input\_stickiness\_type) | n/a | `string` | `"lb_cookie"` | no |
| <a name="input_target_group_name"></a> [target\_group\_name](#input\_target\_group\_name) | n/a | `string` | `"target_group_name"` | no |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | n/a | `string` | `"ip"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC id | `string` | `"my-vpc-id"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_target_group"></a> [target\_group](#output\_target\_group) | n/a |
<!-- END_TF_DOCS -->