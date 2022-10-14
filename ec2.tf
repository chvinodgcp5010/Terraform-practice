data "aws_ami" "ubuntu" {
  most_recent = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.20220912.1-x86_64-gp2*"]
  }
}

resource "aws_instance" "web" {
  ami               = data.aws_ami.ubuntu.id
  instance_type     = var.instance_type-vnd
  #availability_zone = "${var.region-vnd}a"
  #https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
  network_interface {
    network_interface_id = aws_network_interface.nic.id
    device_index         = 0
  }

  tags = {
    Name = var.name-vnd
  }
}
