variable "region" {
  type = string
}

variable "owner" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "ec2_subnet_cidr_block" {
  type = string
}

variable "availability_zone" {
  type = string
}

variable "allowed_ssh_ips" {
  type = list(string)
}

variable "allowed_access_ips" {
  type = list(string)
}

variable "allowed_security_groups" {
  type = list(string)
  default = [""]
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "root_volume_size" {
  type = number
}

variable "root_volume_type" {
  type = string
}
