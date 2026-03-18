variable "bucket_name_prefix" {
  description = "Prefix used to build a globally unique S3 bucket name"
  type        = string
}

variable "region" {
  description = "AWS region used in the generated bucket name"
  type        = string
}

variable "force_destroy" {
  description = "Delete all objects when destroying the bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Common tags applied to S3 resources"
  type        = map(string)
  default     = {}
}
