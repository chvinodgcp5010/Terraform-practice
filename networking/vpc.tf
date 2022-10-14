#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network_interface_id

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"            # "10.0.0.0/16"         
 
  tags = {
    Name = var.vpc-name
  }
}
