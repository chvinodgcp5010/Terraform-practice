#https://www.terraform.io/language/values/outputs

output "instance_ip_addr" {
  value = aws_instance.web.public_ip
}
