resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24                        #"172.16.10.0/24"
  #availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
  #true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  tags = {
    Name = var.subnet1-name
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.2.0/24                        #"172.16.10.0/24"
  #availability_zone = "us-east-1a"
  map_public_ip_on_launch = "true"
  #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
  #true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false.
  tags = {
    Name = var.subnet2-name
  }
}
