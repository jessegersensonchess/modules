output "public_subnet_a" {
  value       = aws_subnet.public_subnet_a.id
  description = "The ID of public subnet A"
}

output "public_subnet_b" {
  value       = aws_subnet.public_subnet_b.id
  description = "The ID of public subnet B"
}

output "private_subnet_a" {
  value       = aws_subnet.private_subnet_a.id
  description = "The ID of private subnet A"
}

output "private_subnet_b" {
  value       = aws_subnet.private_subnet_b.id
  description = "The ID of private subnet B"
}

output "vpc_id" {
  value       = aws_vpc.vpc.id
  description = "The ID of the VPC"
}

output "output" {
  value       = aws_vpc.vpc
  description = "All output from VPC"
}

output "aws_private_route_table_a_id" {
  value       = aws_route_table.private_route_table_a.id
  description = "Route table id for private route A"
}

output "aws_private_route_table_b_id" {
  value       = aws_route_table.private_route_table_b.id
  description = "Route table id for private route B"
}
