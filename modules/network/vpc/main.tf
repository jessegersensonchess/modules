locals {
  name             = var.network_basename
  environment      = var.environment
  default_cidr     = "0.0.0.0/0"
  subnet           = "${var.base_subnet}.0.0/16"
  public_subnet_a  = "${var.base_subnet}.0.0/24"
  public_subnet_b  = "${var.base_subnet}.1.0/24"
  private_subnet_a = "${var.base_subnet}.2.0/24"
  private_subnet_b = "${var.base_subnet}.3.0/24"
  az_a             = "${data.aws_region.current.name}a"
  az_b             = "${data.aws_region.current.name}b"
}

data "aws_region" "current" {
  name = var.region
}

#### VPC ####
resource "aws_vpc" "vpc" {
  cidr_block                           = local.subnet
  assign_generated_ipv6_cidr_block     = var.assign_generated_ipv6_cidr_block
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_dns_support                   = var.enable_dns_support
  enable_network_address_usage_metrics = var.enable_network_address_usage_metrics
  instance_tenancy                     = var.instance_tenancy

  tags = {
    Name        = "${local.name}-VPC"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

#### Subnets ####
resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.public_subnet_a
  availability_zone = local.az_a

  map_public_ip_on_launch = var.public_subnet_a_map_public_ip_on_launch

  tags = {
    Name        = "${local.name}-Public-Subnet-A"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.public_subnet_b
  availability_zone = local.az_b

  map_public_ip_on_launch = var.public_subnet_a_map_public_ip_on_launch

  tags = {
    Name        = "${local.name}-Public-Subnet-B"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.private_subnet_a
  availability_zone = local.az_a

  map_public_ip_on_launch = var.private_subnet_a_map_public_ip_on_launch

  tags = {
    Name        = "${local.name}-Private-Subnet-A"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.private_subnet_b
  availability_zone = local.az_b

  map_public_ip_on_launch = var.private_subnet_b_map_public_ip_on_launch

  tags = {
    Name        = "${local.name}-Private-Subnet-B"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

#### Internet Gateway ####
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = "${local.name}-Internet-Gateway"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

#### Public Routing ####
resource "aws_route_table" "public_route_table_a" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = "${local.name}-Route-Table-Public-A"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_route_table" "public_route_table_b" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = "${local.name}-Route-Table-Public-B"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_route" "public_route_a" {
  route_table_id         = aws_route_table.public_route_table_a.id
  destination_cidr_block = local.default_cidr
  gateway_id             = aws_internet_gateway.internet_gateway.id
  depends_on = [
    aws_internet_gateway.internet_gateway
  ]
}

resource "aws_route" "public_route_b" {
  route_table_id         = aws_route_table.public_route_table_b.id
  destination_cidr_block = local.default_cidr
  gateway_id             = aws_internet_gateway.internet_gateway.id
  depends_on = [
    aws_internet_gateway.internet_gateway
  ]
}

resource "aws_route_table_association" "public_subnet_1_route_table_association" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.public_route_table_a.id
}

resource "aws_route_table_association" "public_subnet_2_route_table_association" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.public_route_table_b.id
}

#### NAT ####
resource "aws_route_table" "private_route_table_a" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = "${local.name}-Route-Table-Private-A"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_route_table" "private_route_table_b" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name        = "${local.name}-Route-Table-Private-B"
    Environment = var.environment
    Managed_By  = "Terraform"
  }
}

resource "aws_route_table_association" "private_subnet_1_route_table_association" {
  subnet_id      = aws_subnet.private_subnet_a.id
  route_table_id = aws_route_table.private_route_table_a.id
}

resource "aws_route_table_association" "private_subnet_2_route_table_association" {
  subnet_id      = aws_subnet.private_subnet_b.id
  route_table_id = aws_route_table.private_route_table_b.id
}
