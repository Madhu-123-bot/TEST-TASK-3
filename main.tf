provider "aws" {
  region = var.aws_region
}

# EC2 Instance Resource
resource "aws_instance" "web" {
  ami           = var.ec2_ami
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}

# S3 Bucket Resource with Unique Name
resource "aws_s3_bucket" "bucket" {
  bucket = "unique-terraform-bucket-${random_integer.suffix.result}"

  tags = {
    Name        = "Terraform-S3"
    Environment = var.environment
  }
}

# Add Random Integer for Unique Bucket Names
resource "random_integer" "suffix" {
  min = var.bucket_random_suffix_min
  max = var.bucket_random_suffix_max
}

# RDS Instance Resource
resource "aws_db_instance" "mydb" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.rds_storage_type
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  username             = var.rds_username
  password             = var.rds_password
  publicly_accessible  = var.rds_publicly_accessible
  skip_final_snapshot  = var.skip_final_snapshot

  tags = {
    Name        = "Terraform-RDS"
    Environment = var.environment
  }
}
