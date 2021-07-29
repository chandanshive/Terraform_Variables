provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "webserver" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"

  tags = {
    Name = "webserver"
  }
}
