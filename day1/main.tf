provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "mjs-ins-007" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    Name = "mjs-ldap-01"
  }
}