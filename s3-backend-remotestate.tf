terraform {
  backend "s3" {
    bucket = "kplabs-terraform-vnd"
    dynamodb_table = "my-dynamodb"
    key    = "vnd.tfstate"
    region = "us-east-1"
  }
}
