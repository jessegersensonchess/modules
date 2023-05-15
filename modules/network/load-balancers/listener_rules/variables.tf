variable "order" {
  type        = number
  default     = 1
  description = ""
}

variable "target_group_arn" {
  type        = string
  default     = "target_group_arn"
  description = "The ARN of the Target Group to which to route traffic. Specify only if type is forward and you want to route to a single target group. To route to one or more target groups, use a forward block instead."
}

variable "type" {
  type        = string
  default     = "forward"
  description = "The type of routing action. Valid values are forward, redirect, fixed-response, authenticate-cognito and authenticate-oidc"
}

variable "path_pattern" {
  type        = list(string)
  default     = ["/path1", "/path2/*"]
  description = "Contains a single values item which is a list of path patterns to match against the request URL. Maximum size of each pattern is 128 characters. Comparison is case sensitive. Wildcard characters supported: * (matches 0 or more characters) and ? (matches exactly 1 character). Only one pattern needs to match for the condition to be satisfied. Path pattern is compared only to the path of the URL, not to its query string. To compare against the query string, use a query_string condition."
}

variable "listener_arn" {
  type        = string
  default     = "listener_arn"
  description = "The ARN of the listener to which to attach the rule."
}

variable "priority" {
  type        = number
  default     = 1
  description = "The priority for the rule between 1 and 50000. Leaving it unset will automatically set the rule with next available priority after currently existing highest rule. A listener can't have multiple rules with the same priority."
}
