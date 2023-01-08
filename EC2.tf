# EC2 with Public Subnet: 

resource "aws_instance" "web" {
  ami           = "ami-0cca134ec43cf708f" # Amazon-Linux AMI.
  instance_type = "t2.micro"              # Free-Tier Eligible Instance Type.
  key_name = "subhaasshhh"                # Given Random Key_Name for Connecting to the Server.
  subnet_id = aws_subnet.public.id        # Assigning Public Subnet to Web Server.
  vpc_security_group_ids = [aws_security_group.allow_tls_public.id]
  associate_public_ip_address = true
  user_data = file("NGINX_Server.tpl")
  tags = {
    Name = "Web Server"
  }

# Enabling Provisioner: For Connecting Private EC2 Instance from Public EC2 Instances.

provisioner "file" {
    source = "C:/Users/subha/AWS Creds/subhaasshhh.pem"
    destination = "/home/ec2-user/subhaasshhh.pem"
  
    connection {
      type = "ssh"
      host = self.public_ip
      user = "ec2-user"
      private_key = "${file("C:/Users/subha/AWS Creds/subhaasshhh.pem")}"
    }  
  }
}

# EC2 with Private Subnets:

resource "aws_instance" "app_server" {
  ami           = "ami-0cca134ec43cf708f"   
  instance_type = "t2.micro"                
  key_name = "subhaasshhh"                  
  subnet_id = aws_subnet.private[0].id    # Assigning Private Subnet to App Server.
  vpc_security_group_ids = [aws_security_group.allow_tls_private.id]
  user_data = file("Java.tpl")
  # associate_public_ip_address = true (By Default it's False).
  tags = {
    Name = "Application Server"
  }
}

resource "aws_instance" "db_server" {
  ami           = "ami-0cca134ec43cf708f"   
  instance_type = "t2.micro"                
  key_name = "subhaasshhh"                  
  subnet_id = aws_subnet.private[1].id    # Assigning Private Subnet DB Server.
  vpc_security_group_ids = [aws_security_group.allow_tls_private.id]
  user_data = file("PostgreSQL.tpl")
  tags = {
    Name = "DB Server"
  }
}