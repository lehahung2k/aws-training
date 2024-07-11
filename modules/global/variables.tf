variable "project_name" {
  description = "The name of the project"
  type = string
}

variable "environment" {
  description = "The environment the project is deployed in"
  type = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type = string
}

variable "tags" {
  description = "A map of tags to add to the resources"
  type = map(string)
  default = {}
}

# variable "vpc_cidr_block" {
#   description = "The CIDR block for the VPC"
#   type = string
# }
