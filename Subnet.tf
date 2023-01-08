# Public Subnet for Web-Server:

resource "aws_subnet" "public" { 
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-south-1a"


  tags = {
    Name = "public-subnet_01"
  }
}


# Private Subnets for Application and DB Server:

resource "aws_subnet" "private" { 
  vpc_id     = aws_vpc.main.id            # Referencing Custom_VPC Resource Block.
  cidr_block = var.cidr[count.index]      # "count.index" brings the Variables from Variables_CIDR.
  availability_zone = var.az[count.index]
  count = 2

  tags = {
    Name = "private-sub_02"
  }
}
