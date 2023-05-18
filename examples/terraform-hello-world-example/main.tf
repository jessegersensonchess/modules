terraform {
  required_version = ">= 1.0.0"
}

# website::tag::1:: The simplest possible Terraform module: it just outputs "Hello, World!"
output "hello_world" {
  value       = "World, Hello!"
  description = "hello world description"
}
