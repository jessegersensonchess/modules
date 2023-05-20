variable "ip_address_type" {
  type        = string
  default     = "ipv4"
  description = "(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack"
}

variable "internal" {
  type        = bool
  default     = false
  description = "(Optional) If true, the LB will be internal"
}

variable "enable_waf_fail_open" {
  type        = bool
  default     = false
  description = "(Optional) Indicates whether to allow a WAF-enabled load balancer to route requests to targets if it is unable to forward the request to AWS WAF"
}

variable "xff_header_processing_mode" {
  type        = string
  default     = "append"
  description = "(Optional) Determines how the load balancer modifies the X-Forwarded-For header in the HTTP request before sending the request to the target. The possible values are append, preserve, and remove. Only valid for Load Balancers of type application"
}

variable "enable_xff_client_port" {
  type        = bool
  default     = false
  description = "(Optional) Indicates whether the X-Forwarded-For header should preserve the source port that the client used to connect to the load balancer in application load balancers"
}

variable "desync_mitigation_mode" {
  type        = string
  default     = "defensive"
  description = "(Optional) Determines how the load balancer handles requests that might pose a security risk to an application due to HTTP desync. Valid values are monitor, defensive (default), strictest"
}

variable "enable_http2" {
  type        = bool
  default     = true
  description = "(Optional) Indicates whether HTTP/2 is enabled in application load balancers."
}

variable "enable_cross_zone_load_balancing" {
  type        = bool
  default     = true
  description = " (Optional) If true, cross-zone load balancing of the load balancer will be enabled. For network and gateway type load balancers, this feature is disabled by default (false). For application load balancer this feature is always enabled (true) and cannot be disabled."
}

variable "drop_invalid_header_fields" {
  type        = bool
  default     = true
  description = "(Optional) Indicates whether HTTP headers with header fields that are not valid are removed by the load balancer (true) or routed to targets (false). The default is false. Elastic Load Balancing requires that message header names contain only alphanumeric characters and hyphens. Only valid for Load Balancers of type application"
}

variable "preserve_host_header" {
  type        = bool
  default     = false
  description = "(Optional) Indicates whether the Application Load Balancer should preserve the Host header in the HTTP request and send it to the target without any change."
}

variable "load_balancer_type" {
  type        = string
  default     = "application"
  description = "(Optional) The type of load balancer to create. Possible values are application, gateway, or network. The default value is application."
}

variable "subnet_id_a" {
  type        = string
  default     = "my-subnet-a"
  description = "ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone."
}

variable "subnet_id_b" {
  type        = string
  default     = "my-subnet-b"
  description = "ID of the subnet of which to attach to the load balancer. You can specify only one subnet per Availability Zone."
}

variable "enable_deletion_protection" {
  type        = bool
  default     = false
  description = "(Optional) If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer"
}

variable "security-groups" {
  type        = list(string)
  default     = ["my-security-groups"]
  description = "(Optional) A list of security group IDs to assign to the LB. Only valid for Load Balancers of type application"
}

variable "subnets" {
  type        = list(string)
  default     = ["my-subnets"]
  description = "(Optional) A list of subnet IDs to attach to the LB. Subnets cannot be updated for Load Balancers of type network. Changing this value for load balancers of type network will force a recreation of the resource"
}

variable "lb_idle_timeout" {
  type        = number
  default     = 30
  description = "(Optional) The time in seconds that the connection is allowed to be idle. Only valid for Load Balancers of type application"
}

variable "service" {
  type        = string
  default     = "my-service"
  description = "(optional) Service which uses this resource. Value appears as a tag with key Service"

}

variable "owner" {
  type        = string
  default     = "owner"
  description = "(optional) Owner of the resource. Value appears as a tag with key Owner"

}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(optional) Environment of the resource. Value appears as a tag with key Environment"

}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"

}

