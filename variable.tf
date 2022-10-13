#https://www.terraform.io/language/values/variables

variable "instance_type-vnd" {
  description = "type of EC2 instance to provision."
  default     = "t2.micro"
}

variable "region-vnd" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "name-vnd" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-vnd"
}
