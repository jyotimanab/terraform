output "instance_ip_address" {
  value = [for instance in aws_instance.mjs-ansible: instance.public_ip ]
}