resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}


resource "aws_route_table" "priv_rt" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table" "pub_rt" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_route_table_association" "pub-sub1-rt-association" {
  route_table_id = aws_route_table.pub_rt.id
  subnet_id      = aws_subnet.pub_sub1.id
}

resource "aws_route_table_association" "pub-sub2-rt-association" {
  route_table_id = aws_route_table.pub_rt.id
  subnet_id      = aws_subnet.pub_sub2.id
}

resource "aws_route_table_association" "priv-sub1-rt-association" {
  route_table_id = aws_route_table.priv_rt.id
  subnet_id      = aws_subnet.priv_sub1.id
}

resource "aws_route_table_association" "priv-sub2-rt-association" {
  route_table_id = aws_route_table.priv_rt.id
  subnet_id      = aws_subnet.priv_sub2.id
}

resource "aws_route" "pub-rt" {
  route_table_id         = aws_route_table.pub_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id

}
