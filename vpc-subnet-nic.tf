#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#network_interface_id

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = var.vpc-name
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  #availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
  #true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  tags = {
    Name = var.subnet-name
  }
}

#https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html

resource "aws_network_interface" "nic" {
  subnet_id   = aws_subnet.my_subnet.id
  tags = {
    Name = var.nic-name
  }
}
