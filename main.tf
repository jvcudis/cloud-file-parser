provider "aws" {
  access_key = "accesskey"
  secret_key = "secretkey"
  region = "ap-southeast-2"

  # localstack-specific configs
  skip_credentials_validation = true
  skip_metadata_api_check = true
  s3_force_path_style = true

  endpoints {
    s3 = "http://localhost:4572"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-test"
  acl = "private"
}

# terraform state
# for now we use local, it should use s3 bucket for remote state
terraform {
  # backend "s3" {
  #   bucket = "<bucket_name>"
  #   key = "fileparser"
  #   region = "ap-southeast-2"
  # }
}
