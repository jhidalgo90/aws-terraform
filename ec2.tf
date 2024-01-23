resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.test_instance_type

}

resource "aws_instance" "linux" {
  ami           = var.ami_id
  instance_type = var.test_instance_type

}