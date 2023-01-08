# Configuring NAT Gateway:

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.myeip.id     # Referencing Elastic_IP.
  subnet_id     = aws_subnet.public.id # Putting NAT Gateway on Public Subnet.

  tags = {
    Name = "NAT_GW"
  }

  # To Ensure Proper Ordering, it is recommended to Add an Explicit Dependency
  # on the Internet Gateway for the VPC.

  depends_on = [aws_internet_gateway.gw]
}
