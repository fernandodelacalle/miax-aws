
resource "aws_security_group" "sg-allow_ssh_http" {
  name = "allow_ssh_http_miax"
  ingress {
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0ea0f26a6d50850c5"
  instance_type = "t2.micro"

  tags = {
    Name = "miax_machine"
  }

  vpc_security_group_ids = [
    aws_security_group.sg-allow_ssh_http.id
  ]

  key_name = "claves-test"

}