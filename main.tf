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
  resource "aws_s3_bucket_public_access_block" "data-science-storage" {
    bucket = aws_s3_bucket.data-science-storage.id
  
    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
    depends_on = [aws_s3_bucket.data-science-storage]
  }