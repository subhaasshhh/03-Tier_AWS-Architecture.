# Configuring Custom Route Table:

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"                # Defining Public CIDR.            
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "My-Route"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.route_table.id
}

/*
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.rtb.id
}
*/


# Adding NAT Gateway into the Default Main Route Table:
# Whenever we Create a Custom VPC, a Default Route Table is Created.

resource "aws_default_route_table" "default_route_table" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "default_route_table"
  }
}