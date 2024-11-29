output "vpc_id" {
  description = "The ID of the VPC"
  value = aws_vpc.main_vpc.id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value = aws_vpc.main_vpc.cidr_block
}

output "internet_gateway_id" {
  description = "The ID of the internet gateway"
  value = aws_internet_gateway.main_igw.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value = aws_subnet.public[*].id
}
