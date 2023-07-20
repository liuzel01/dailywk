provider "aws" {
  region     = "ap-east-1"
  access_key = var.access_secret_key[0]
  secret_key = var.access_secret_key[1]
}

variable "access_secret_key" {
  description = "access key and secret for aws cli"
  type        = list(string)
}
variable "cidr_blocks" {
  description = "cidr blocks for vpc and subnets"
  type = list(object({
    cidr_block = string
    name       = string
  }))
}
variable "envrionment" {
  description = "dev envrionment"
}

resource "aws_vpc" "vpc-l01" {
  cidr_block = var.cidr_blocks[0].cidr_block
  tags = {
    Name : var.cidr_blocks[0].name
  }
}

resource "aws_subnet" "subnet-l01" {
  vpc_id            = aws_vpc.vpc-l01.id
  cidr_block        = var.cidr_blocks[1].cidr_block
  availability_zone = "ap-east-1a"
  tags = {
    Name : var.cidr_blocks[1].name
  }
}
