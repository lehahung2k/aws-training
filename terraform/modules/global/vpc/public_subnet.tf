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
