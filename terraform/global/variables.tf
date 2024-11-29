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

variable "remote_bucket_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "private_cidr_blocks" {
  type = list(string)
}

variable "public_cidr_blocks" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}
