output "ec2_instance_id" {
  value       = aws_instance.web.id
  description = "ID of the created EC2 instance"
}

output "s3_bucket_name" {
  value       = aws_s3_bucket.bucket.bucket
  description = "Name of the created S3 bucket"
}

output "rds_endpoint" {
  value       = aws_db_instance.mydb.endpoint
  description = "Endpoint of the created RDS instance"
}
