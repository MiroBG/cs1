output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "s3_vpc_endpoint_id" {
  value = aws_vpc_endpoint.s3.id
}

output "route_table_public_id" {
  value = aws_route_table.public.id
}

output "route_table_private1_id" {
  value = aws_route_table.private1.id
}

output "route_table_private2_id" {
  value = aws_route_table.private2.id
}

output "web_security_group_id" {
  value = aws_security_group.web.id
}

output "db_security_group_id" {
  value = aws_security_group.db.id
}
