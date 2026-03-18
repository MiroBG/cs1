output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_public1_a_id" {
  value = module.aws_subnets.subnet_public1_a_id
}

output "subnet_public2_b_id" {
  value = module.aws_subnets.subnet_public2_b_id
}

output "subnet_private1_a_id" {
  value = module.aws_subnets.subnet_private1_a_id
}

output "subnet_private2_b_id" {
  value = module.aws_subnets.subnet_private2_b_id
}

output "internet_gateway_id" {
  value = module.aws_network.internet_gateway_id
}

output "s3_vpc_endpoint_id" {
  value = module.aws_network.s3_vpc_endpoint_id
}

output "route_table_public_id" {
  value = module.aws_network.route_table_public_id
}

output "route_table_private1_id" {
  value = module.aws_network.route_table_private1_id
}

output "route_table_private2_id" {
  value = module.aws_network.route_table_private2_id
}

output "web_security_group_id" {
  value = module.aws_network.web_security_group_id
}

output "db_security_group_id" {
  value = module.aws_network.db_security_group_id
}
