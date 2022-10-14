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

variable "vpc-name" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-vpc"
}

variable "subnet1-name" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-subnet1-public"
}

variable "subnet2-name" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-subnet2-private"
}

variable "nic-name" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-nic"
}

variable "igw-name" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-igw"
}

variable "rt" {
  description = "name to pass to Name tag"
  default     = "terraform-ec2-rt"
}
