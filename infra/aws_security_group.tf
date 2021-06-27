resource "aws_security_group" "ssh_any" {
  vpc_id = data.aws_vpc.default.id
  name        = "ssh_any"
  
  ingress {
     description = "SSH"
     from_port   = 22	
     to_port     = 22
     protocol    = "tcp"
     cidr_blocks = ["0.0.0.0/0"]

}

  tags = {
    Name = "ssh_any"
  }
}


resource "aws_security_group" "http_any" {
  vpc_id = data.aws_vpc.default.id
  name        = "http_any"
  
  ingress {
    description = "TCP"
    from_port   = 80	
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

  ingress {
    description = "TCP"
    from_port   = 443	
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

  tags = {
    Name = "www_any"
  }
}


resource "aws_security_group" "egress_any" {
  vpc_id = data.aws_vpc.default.id
  name        = "egress_any"
  
  egress {
     from_port   = 0	
     to_port     = 0
     protocol    = "-1"
     cidr_blocks = ["0.0.0.0/0"]

}  
  tags = {
    Name = "egress_any"
  }
}
