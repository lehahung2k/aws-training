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
