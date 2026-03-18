variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where network resources are created"
  type        = string
}

variable "subnet_public1_a_id" {
  description = "Public subnet 1 ID"
  type        = string
}

variable "subnet_public2_b_id" {
  description = "Public subnet 2 ID"
  type        = string
}

variable "subnet_private1_a_id" {
  description = "Private subnet 1 ID"
  type        = string
}

variable "subnet_private2_b_id" {
  description = "Private subnet 2 ID"
  type        = string
}

variable "ssh_ingress_cidr" {
  description = "CIDR allowed to SSH into web instances"
  type        = string
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT gateway for private subnet egress"
  type        = bool
  default     = false
}
