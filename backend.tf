terraform {
  backend "s3" {
    bucket = "charlyo-mini"
    key    = "input"
    region = "us-east-1"
    access_key = "staging-user"
    secret_key = "staging-pass secret"
    #dynamodb_table = "s3-state-lock"
  }
}