provider "aws" {
  region = var.region
}

resource "aws_security_group" "grupo_seguridad_ejercicio_2" {
  name        = "grupo_seguridad_ejercicio_2"
  description = "Security group for ejercicio 2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
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

resource "aws_instance" "instancia_ejercicio_2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  root_block_device {
    volume_size = var.volume_size
  }

  vpc_security_group_ids = [aws_security_group.grupo_seguridad_ejercicio_2.id]

  tags = {
    Name = "instancia_ejercicio_2"
  }
}