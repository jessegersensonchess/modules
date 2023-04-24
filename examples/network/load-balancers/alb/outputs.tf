output "dns_name" {
  value = module.load-balancer.dns_name
}

output "output" {
  value = module.load-balancer
}

output "arn" {
  value = module.load-balancer.arn
}

#output "output" {
#  value = aws_lb.lb
#}
