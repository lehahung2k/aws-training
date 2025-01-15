output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = module.server_test.instance_id
}

output "security_group_id" {
  description = "ID of the security group attached to the EC2 instance"
  value       = module.server_test.security_group_id
}

output "subnet_id" {
  description = "ID of the subnet where the EC2 instance is launched"
  value       = module.server_test.subnet_id
}
