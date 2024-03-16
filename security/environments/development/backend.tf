terraform {
  backend "s3" {
    bucket         = "terraform-aws-state-1979"
    key            = "security/environments/development/terraform.tfstate"
    region         = "us-east-1"
  }
}
