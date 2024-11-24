# Purpose: Create a subnet for EC2 instances
# Public subnets are used for EC2 instances
resource "aws_subnet" "ec2_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.ec2_subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2-public-subnet"
  }
}

# Route table for EC2 instances in the public subnet
resource "aws_route_table" "ec2_rt" {
  vpc_id = var.vpc_id

  tags = {
    Name = "${var.project_name}-${var.environment}-ec2-rtb"
  }
}

resource "aws_route" "internet_gateway" {
  route_table_id         = aws_route_table.ec2_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gateway_id
}

# Route table association for EC2 instances
resource "aws_route_table_association" "ec2_rta" {
  subnet_id      = aws_subnet.ec2_subnet.id
  route_table_id = aws_route_table.ec2_rt.id
}
