variable "domain-name" {
  type    = string
  default = "mydomain.name"
}

variable "key-algorithm" {
  type    = string
  default = "RSA_2048"
}

variable "logging-preference" {
  type    = string
  default = "ENABLED"
}

variable "validation-method" {
  type    = string
  default = "EMAIL"
}
