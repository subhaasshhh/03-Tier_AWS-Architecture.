# Custom VPC:

resource "aws_vpc" "main" {             # Resource can be Referenced from Terraform Official Website.
  cidr_block = "10.0.0.0/16"           
  
  tags = {
    Name = "CustomVPC"
  }
}
