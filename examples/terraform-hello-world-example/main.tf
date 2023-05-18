terraform {
  required_version = ">= 1.0.0"
}

output "hello_world" {
  syntax_error_here_value       = "xxWorld, Hello!"
  description = "hello world description"
}

