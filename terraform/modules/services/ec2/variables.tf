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

# EC2 variables
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "SSH key name for the EC2 instance"
  type        = string
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Type of the root volume"
  type        = string
  default     = "gp3"
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "iam_instance_profile" {
  description = "IAM instance profile for the EC2 instance"
  type        = string
  default     = ""
}
