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
| [aws_lb_listener_rule.rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_listener_arn"></a> [listener\_arn](#input\_listener\_arn) | The ARN of the listener to which to attach the rule. | `string` | `"listener_arn"` | no |
| <a name="input_order"></a> [order](#input\_order) | n/a | `number` | `1` | no |
| <a name="input_path_pattern"></a> [path\_pattern](#input\_path\_pattern) | Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query\_string condition. | `list(string)` | <pre>[<br>  "/path1",<br>  "/path2/*"<br>]</pre> | no |
| <a name="input_priority"></a> [priority](#input\_priority) | The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority. | `number` | `1` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | The ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead. | `string` | `"target_group_arn"` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc | `string` | `"forward"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->