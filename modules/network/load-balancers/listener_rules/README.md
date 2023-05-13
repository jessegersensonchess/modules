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
| [aws_lb_listener_rule.rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_listener_arn"></a> [listener\_arn](#input\_listener\_arn) | n/a | `string` | `"listener_arn"` | no |
| <a name="input_order"></a> [order](#input\_order) | n/a | `number` | `1` | no |
| <a name="input_path_pattern"></a> [path\_pattern](#input\_path\_pattern) | n/a | `list(string)` | <pre>[<br>  "/path1",<br>  "/path2/*"<br>]</pre> | no |
| <a name="input_priority"></a> [priority](#input\_priority) | n/a | `number` | `1` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | n/a | `string` | `"target_group_arn"` | no |
| <a name="input_type"></a> [type](#input\_type) | n/a | `string` | `"forward"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->