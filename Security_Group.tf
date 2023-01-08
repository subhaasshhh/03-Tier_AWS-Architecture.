# Public SG:
resource "aws_security_group" "allow_tls_public" {
  name        = "allow_tls_public"
  description = "Allow TLS Inbound Traffic"
  vpc_id      = aws_vpc.main.id

# Whitelisting Ports for Connection:

# Inbound:
  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]  # Enables all IPv4 addresses to Access your Instance using SSH.
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 80             # Allows Inbound HTTP access from all IPv4 Addresses.
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

#  Outbound:
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls_public"
  }
}

# Private SG:
resource "aws_security_group" "allow_tls_private" {
  name        = "allow_tls_private"
  description = "Allow TLS Inbound Traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "TLS from VPC"
    from_port        = 5432                  # Port Exposed for PostgreSQL.
    to_port          = 5432
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_tls_private"
  }
}