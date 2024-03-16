provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "dev-terraform-aws-state-1979"  # Change this to your desired bucket name
  acl    = "private"  # Optional: Set the bucket ACL (Access Control List)
  versioning {
    enabled = true  # Enable versioning for the bucket
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"  # Enable server-side encryption with AES256
      }
    }
  }
} 