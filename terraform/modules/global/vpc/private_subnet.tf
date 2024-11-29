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
