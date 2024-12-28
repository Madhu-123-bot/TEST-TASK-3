variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

variable "ec2_ami" {
  description = "AMI ID for EC2 instance"
  default     = "ami-053b12d3152c0cc71"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "environment" {
  description = "Environment tag for resources"
  default     = "Dev"
}

variable "bucket_random_suffix_min" {
  description = "Minimum value for random suffix for bucket name"
  default     = 10000
}

variable "bucket_random_suffix_max" {
  description = "Maximum value for random suffix for bucket name"
  default     = 99999
}

variable "allocated_storage" {
  description = "Allocated storage for RDS"
  default     = 20
}

variable "rds_storage_type" {
  description = "Storage type for RDS"
  default     = "gp2"
}

variable "rds_engine" {
  description = "Database engine for RDS"
  default     = "mysql"
}

variable "rds_engine_version" {
  description = "Database engine version for RDS"
  default     = "8.0.39"
}

variable "rds_instance_class" {
  description = "Instance class for RDS"
  default     = "db.t3.micro"
}

variable "rds_username" {
  description = "Master username for RDS"
  default     = "admin"
}

variable "rds_password" {
  description = "Master password for RDS"
  default     = "StrongPassword123!"
}

variable "rds_publicly_accessible" {
  description = "Should RDS be publicly accessible"
  default     = false
}

variable "skip_final_snapshot" {
  description = "Whether to skip final snapshot for RDS deletion"
  default     = true
}
