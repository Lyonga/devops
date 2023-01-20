provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}
resource "aws_s3_bucket" "data-science-storage"{
    bucket = "testbucketforjan192023"
  
    tags = merge(
      var.tags,
      {
        name = "testbucketforjan192023"
      }
    )
      server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256"
        }
      }
    }
  
  }
