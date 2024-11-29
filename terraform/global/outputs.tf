output "vpc_id" {
  description = "The ID of the VPC"
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value = module.vpc.vpc_cidr_block
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value = module.vpc.internet_gateway_id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value = module.vpc.private_subnet_ids
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value = module.vpc.public_subnet_ids
}