output "web_instance_id" {
  value = aws_instance.web.id
}

output "web_instance_private_ip" {
  value = aws_instance.web.private_ip
}
