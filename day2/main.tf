provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "mjs-ansible" {
  count = 2  
  ami = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    "Name" = "mjs-ansible-${count.index}"
  }
}