variable "project_name" {
  description = "The name of the project"
  type = string
}

variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}

variable "tags" {
  description = "A map of tags to add to the resources"
  type = map(string)
  default = {}
}

variable "azs" {
  description = "A list of availability zones"
  type = list(string)
}

variable "private_cidr_blocks" {
  description = "A list of CIDR blocks for the private subnets"
  type = list(string)
}

variable "public_cidr_blocks" {
  description = "The CIDR blocks for the public subnet"
  type = list(string)
}
