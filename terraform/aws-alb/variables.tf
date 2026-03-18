variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the ALB is deployed"
  type        = string
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the ALB (minimum 2 AZs)"
  type        = list(string)
}

variable "web1_instance_id" {
  description = "EC2 instance ID of the first web server"
  type        = string
}

variable "web2_instance_id" {
  description = "EC2 instance ID of the second web server"
  type        = string
}

variable "web_security_group_id" {
  description = "Security group ID attached to web EC2 instances"
  type        = string
}
