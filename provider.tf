# Any selected backend applies to the entire configuration, so Terraform expects provider configurations only in the root module.so we need to add
# provider.tf on root folder here.

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.34.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}
