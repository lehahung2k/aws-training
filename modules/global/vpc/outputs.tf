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
