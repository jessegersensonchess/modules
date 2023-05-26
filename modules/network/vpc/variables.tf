variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "AWS region for this resource"
}

variable "network_basename" {
  type        = string
  default     = "Common"
  description = "prefix for network name"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "(Optional) Environment of the resource. Value appears as a tag with key Environment"
}

variable "base_subnet" {
  type        = string
  default     = "10.10"
  description = "First two octets of subnets"
}

variable "assign_generated_ipv6_cidr_block" {
  type        = bool
  default     = false
  description = "(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block."
}

variable "enable_dns_hostnames" {
  type        = bool
  default     = true
  description = "(Optional) A boolean flag to enable/disable DNS hostnames in the VPC"
}

variable "enable_dns_support" {
  type        = bool
  default     = true
  description = "(Optional) A boolean flag to enable/disable DNS support in the VPC"
}

variable "enable_network_address_usage_metrics" {
  type        = bool
  default     = false
  description = "True will enable network address usage metrics"
}

variable "managed_by" {
  type        = string
  default     = "Terraform"
  description = "entity managing this resource. Value appears as a meta tag with key Managed_By"
}

variable "instance_tenancy" {
  type        = string
  default     = "default"
  description = "(Optional) A tenancy option for instances launched into the VPC. Default is default, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is dedicated, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch."
}

variable "private_subnet_a_map_public_ip_on_launch" {
  type        = bool
  default     = false
  description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable "private_subnet_b_map_public_ip_on_launch" {
  type        = bool
  default     = false
  description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address."
}

variable "public_subnet_a_map_public_ip_on_launch" {
  type        = bool
  default     = true
  description = "(Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address."

}

