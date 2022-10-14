/*
  #https://www.terraform.io/language/settings/backends/s3

terraform {
  backend "s3" {
    bucket = "kplabs-terraform-vnd"
    dynamodb_table = "my-dynamodb"          #create dynamodb table manually
    key    = "vnd.tfstate"                  #it saves tfstate on provided bucket and store with a name 
    region = "us-east-1"
  }
}
*/
