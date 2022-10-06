terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_ecr_repository" "lambda" {
  name = "lambda-test"
}


resource "aws_security_group" "sg-allow_ssh_http" {
  name = "allow_ssh_http"
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami = "ami-0ea0f26a6d50850c5"
  instance_type = "t2.micro"

  vpc_security_group_ids = [
    aws_security_group.sg-allow_ssh_http.id
  ]

  key_name = "claves-test"

}


