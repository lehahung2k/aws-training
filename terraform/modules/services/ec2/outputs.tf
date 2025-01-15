output "instance_id" {
  description = "ID of the created EC2 instance"
  value       = aws_instance.main_server.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.main_server.public_ip
}

output "security_group_id" {
  description = "ID of the security group attached to the EC2 instance"
  value       = aws_security_group.ec2_sg.id
  
}

output "subnet_id" {
  description = "ID of the subnet where the EC2 instance is launched"
  value       = aws_subnet.ec2_subnet.id
}