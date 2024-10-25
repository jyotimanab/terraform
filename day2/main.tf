provider "aws" {
  region = "us-east-1"
}

resource "aws_key_pair" "mjs_key" {
  key_name = "mjs-ansible-key"
  public_key = file("/home/codespace/aws-key/mjs-ansible.pub")

}


resource "aws_instance" "mjs-ansible" {
  count = 2  
  ami = var.ami_value
  instance_type = var.instance_type_value
  tags = {
    "Name" = "mjs-ansible-${count.index}"
  }
  key_name = "mjs-ansible-key"
}