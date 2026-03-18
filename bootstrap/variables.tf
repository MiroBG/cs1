variable "region" {
  description = "AWS region for backend resources"
  type        = string
  default     = "eu-central-1"
}

variable "backend_bucket_prefix" {
  description = "Prefix used when deriving the tfstate bucket name"
  type        = string
  default     = "cs1-tfstate"
}

variable "backend_bucket_name" {
  description = "Optional explicit tfstate bucket name (must be globally unique)"
  type        = string
  default     = ""
}

variable "lock_table_name" {
  description = "DynamoDB table name used for Terraform state locking"
  type        = string
  default     = "cs1-terraform-locks"
}

variable "tags" {
  description = "Tags applied to backend resources"
  type        = map(string)
  default     = {
    Project = "cs1"
  }
}
