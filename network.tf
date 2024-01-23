resource "aws_vpc" "terraform_vcp" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "terraform_vpc"
  }
}

resource "aws_subnet" "terraform_subnet" {
  vpc_id     = aws_vpc.terraform_vcp.id
  cidr_block = var.cidr_block

  tags = {
    Name = "terraform_subnet"
  }
    depends_on = [
    aws_vpc.terraform_vcp
  ]
}

### SECURITY GROUPS IN AWS FOR MY VPC ###

resource "aws_security_group" "terraform_sg" {
  name        = "terraform_sg"
  description = "Security group for Terraform instances"

  vpc_id = aws_vpc.terraform_vcp.id

}