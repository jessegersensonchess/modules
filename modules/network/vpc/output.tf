output "public_subnet_a" {
  value = aws_subnet.public_subnet_a.id
}

output "public_subnet_b" {
  value = aws_subnet.public_subnet_b.id
}

output "private_subnet_a" {
  value = aws_subnet.private_subnet_a.id
}

output "private_subnet_b" {
  value = aws_subnet.private_subnet_b.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "output" {
  value = aws_vpc.vpc
}

output "aws_private_route_table_a_id" {
  value       = "aws_route_table.private_route_table_a.id"
  description = "Route table id for private route A"
}

output "aws_private_route_table_b_id" {
  value       = "aws_route_table.private_route_table_b.id"
  description = "Route table id for private route B"
}
