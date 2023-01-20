terraform {
  backend "s3" {
    bucket = "charlyo-mini"
    key    = "input"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
    #dynamodb_table = "s3-state-lock"
  }
}