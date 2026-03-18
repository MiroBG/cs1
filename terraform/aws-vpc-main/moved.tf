moved {
  from = aws_subnet.private1_a
  to   = module.aws_subnets.aws_subnet.private1_a
}

moved {
  from = aws_subnet.public1_a
  to   = module.aws_subnets.aws_subnet.public1_a
}

moved {
  from = aws_subnet.public2_b
  to   = module.aws_subnets.aws_subnet.public2_b
}

moved {
  from = aws_subnet.private2_b
  to   = module.aws_subnets.aws_subnet.private2_b
}

moved {
  from = aws_internet_gateway.igw
  to   = module.aws_network.aws_internet_gateway.igw
}

moved {
  from = aws_route_table.public
  to   = module.aws_network.aws_route_table.public
}

moved {
  from = aws_route_table.private1
  to   = module.aws_network.aws_route_table.private1
}

moved {
  from = aws_route_table.private2
  to   = module.aws_network.aws_route_table.private2
}

moved {
  from = aws_route.public_internet_access
  to   = module.aws_network.aws_route.public_internet_access
}

moved {
  from = aws_security_group.db
  to   = module.aws_network.aws_security_group.db
}

moved {
  from = aws_security_group.web
  to   = module.aws_network.aws_security_group.web
}

moved {
  from = aws_route_table_association.public1_assoc
  to   = module.aws_network.aws_route_table_association.public1_assoc
}

moved {
  from = aws_route_table_association.public2_assoc
  to   = module.aws_network.aws_route_table_association.public2_assoc
}

moved {
  from = aws_route_table_association.private1_assoc
  to   = module.aws_network.aws_route_table_association.private1_assoc
}

moved {
  from = aws_route_table_association.private2_assoc
  to   = module.aws_network.aws_route_table_association.private2_assoc
}

moved {
  from = aws_vpc_endpoint.s3
  to   = module.aws_network.aws_vpc_endpoint.s3
}
