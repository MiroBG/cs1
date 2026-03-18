output "backend_bucket_name" {
  value = aws_s3_bucket.tfstate.bucket
}

output "backend_bucket_arn" {
  value = aws_s3_bucket.tfstate.arn
}

output "lock_table_name" {
  value = aws_dynamodb_table.tf_lock.name
}
