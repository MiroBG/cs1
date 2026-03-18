variable "vpc_id" {
  description = "VPC ID where subnets are created"
  type        = string
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
