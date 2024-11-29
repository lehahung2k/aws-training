# Create VPC with public and private subnets and internet gateway
resource "aws_vpc" "main_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = merge(
    {
      Name = "${var.project_name}-vpc"
    },
    var.tags
  )
}

resource "aws_internet_gateway" "main_igw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = merge(
    {
      Name = "${var.project_name}-igw"
    },
    var.tags
  )
}

# Private subnets
resource "aws_subnet" "private" {
  count             = length(var.azs)
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_cidr_blocks[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "private-subnet-${element(var.azs, count.index)}"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "${var.project_name}-private-rtb"
  }
}

resource "aws_route_table_association" "private_rta" {
  count          = length(var.azs)
  subnet_id      = aws_subnet.private[count.index].id
  route_table_id = aws_route_table.private_rt.id
}

# Public subnet
resource "aws_subnet" "public" {
  count             = length(var.azs)
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_cidr_blocks[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name = "public-subnet-${element(var.azs, count.index)}"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main_igw.id
  }
  tags = {
    Name = "${var.project_name}-public-rtb"
  }
}

resource "aws_route_table_association" "public_rta" {
  count          = length(var.azs)
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public_rt.id
}
