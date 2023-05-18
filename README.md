# Terraform Repository

This repository contains Terraform code for provisioning and managing infrastructure resources. It is organized into the following directories:

## examples

The `examples` directory contains sample Terraform configurations that demonstrate how to provision different types of infrastructure resources. Each subdirectory within `examples` focuses on a specific category:

- `data-stores`: Example configurations for setting up data storage resources.
- `management`: Example configurations for managing infrastructure and deployment processes.
- `network`: Example configurations for creating networking resources.
- `services`: Example configurations for deploying and managing various services.
- `terraform-hello-world-example`: A basic example configuration showcasing the "Hello, World!" setup using Terraform.

Please refer to the README.md file within each subdirectory for more information and instructions on how to use the example configurations.

## modules

The `modules` directory contains reusable Terraform modules that encapsulate specific sets of infrastructure resources. These modules provide a convenient way to provision common components across different projects. Similar to the `examples` directory, each subdirectory within `modules` corresponds to a specific category:

- `data-stores`: Modules for creating data storage resources.
- `management`: Modules for managing infrastructure and deployment processes.
- `network`: Modules for creating networking resources.
- `services`: Modules for deploying and managing various services.

For detailed documentation and usage instructions, please refer to the README.md file within each module's subdirectory.

## test

The `test` directory contains unit tests for validating the functionality of the Terraform configurations and modules. Each test file within this directory focuses on a specific component or functionality:

- `alb_unit_test.go`: Unit tests for Application Load Balancer (ALB) configurations.
- `certificate_test.go`: Unit tests for SSL/TLS certificate management.
- `ecr_unit_test.go`: Unit tests for Elastic Container Registry (ECR) configurations.
- `ecs_cluster_unit_test.go`: Unit tests for Elastic Container Service (ECS) cluster configurations.
- `efs_unit_test.go`: Unit tests for Elastic File System (EFS) configurations.
- `vpc_unit_test.go`: Unit tests for Virtual Private Cloud (VPC) configurations.

Please refer to the README.md file within the `test` directory for instructions on running the tests and any additional information related to the test suite.

Feel free to explore the respective directories for more details on the Terraform code, examples, modules, and testing provided in this repository.


Sample usage
==============
```
module "ssl-certificate" {
  source      = "git::https://github.com/jessegersensonchess/terraform.git//modules/management/certificates?ref=v0.0.72"
  domain-name = var.domain-name
}
```
