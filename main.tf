provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance Resource
resource "aws_instance" "web" {
  ami           = "ami-053b12d3152c0cc71" # Ubuntu AMI ID for ap-south-1
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}

# S3 Bucket Resource with Unique Name
resource "aws_s3_bucket" "bucket" {
  bucket = "unique-terraform-bucket-${random_integer.suffix.result}" # Globally unique bucket name

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

# Add Random Integer for Unique Bucket Names
resource "random_integer" "suffix" {
  min = 10000
  max = 99999
}

# Outputs
output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
