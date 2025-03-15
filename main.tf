provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "springclass_instance" {
  ami             = "ami-04b4f1a9cf54c11d0" 
  instance_type   = "t3.medium"
  key_name        = "springclasskey"
  security_groups = ["new-terraform-sg"]

  root_block_device {
    volume_size = 10
  }

  tags = {
    Name = "SpringClassEC2"
  }
}

resource "aws_security_group" "open_ports" {
  name        = "open-ports-sg"
  description = "Security group to open ports 80, 8080, and 8081"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
