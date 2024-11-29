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
