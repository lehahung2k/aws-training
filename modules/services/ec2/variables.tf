variable "project_name" {
  description = "The name of the project"
  type = string
}

variable "environment" {
  description = "The environment the project is deployed in"
  type = string
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}

variable "allowed_ssh_ips" {
  description = "A list of IP addresses that are allowed to SSH to the EC2 instances"
  type = list(string)
}

variable "allowed_access_ips" {
  description = "A list of IP addresses that are allowed to access the EC2 instances"
  type = list(string)
}

variable "allowed_security_groups" {
  description = "A list of security groups that are allowed to access the EC2 instances"
  type = list(string)
}

variable "ec2_subnet_cidr_block" {
  description = "The CIDR block for the EC2 subnet"
  type = string
}

variable "availability_zone" {
  description = "The availability zone for the EC2 instances"
  type = string
}

variable "internet_gateway_id" {
  description = "The ID of the internet gateway"
  type = string
}
