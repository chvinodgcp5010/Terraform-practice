# Any selected backend applies to the entire configuration, so Terraform expects provider configurations only in the root module.so we need to add
# provider.tf on root folder here.

required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }

terraform {
  required_version = "> 0.12.0"
}

provider "aws" {
  region = "us-east-1"
  #access_key = "my-access-key"
  #secret_key = "my-secret-key"
}
