output "db_instance_id" {
  value = aws_db_instance.cs1_db.id
}

output "db_instance_endpoint" {
  value = aws_db_instance.cs1_db.endpoint
}

output "db_subnet_group_name" {
  value = aws_db_subnet_group.cs1_db_subnets.name
}