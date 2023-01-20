terraform {
  backend "s3" {
    bucket = "charlyo-mini"
    key    = "input"
    region = "us-east-1"
    access_key = "AKIAY5NZHLQ6663RQPH6"
    secret_key = "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"
    #dynamodb_table = "s3-state-lock"
  }
}