variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "cs1-main-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones to use"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "ssh_ingress_cidr" {
  description = "CIDR allowed to SSH into web instances"
  type        = string
  default     = "217.105.46.189/32"
}

variable "subnet_name_prefix" {
  description = "Prefix used for subnet Name tags"
  type        = string
  default     = "cs1-main"
}

variable "subnet_public1_a_cidr" {
  description = "CIDR for public subnet in eu-central-1a"
  type        = string
  default     = "10.0.0.0/20"
}

variable "subnet_public2_b_cidr" {
  description = "CIDR for public subnet in eu-central-1b"
  type        = string
  default     = "10.0.16.0/20"
}

variable "subnet_private1_a_cidr" {
  description = "CIDR for private subnet in eu-central-1a"
  type        = string
  default     = "10.0.128.0/20"
}

variable "subnet_private2_b_cidr" {
  description = "CIDR for private subnet in eu-central-1b"
  type        = string
  default     = "10.0.144.0/20"
}

variable "enable_nat_gateway" {
  description = "Whether to create NAT for private subnet internet egress"
  type        = bool
  default     = false
}
