resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = var.igw-name
  }
}
Footer
© 2022 GitHub
