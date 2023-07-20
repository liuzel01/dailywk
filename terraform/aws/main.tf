provider "aws" {
  region     = "ap-east-1"
  access_key = var.access_secret_key[0]
  secret_key = var.access_secret_key[1]
}

variable "access_secret_key" {
  description = "access key and secret for aws cli"
  type        = list(string)
}
variable "cidr_block" {
  description = "cidr blocks for vpc and subnets"
  type        = list(string)
}
variable "envrionment" {
  description = "dev envrionment"
}

resource "aws_vpc" "vpc-l01" {
  cidr_block = var.cidr_block[0]
  tags = {
    # Name : "vpc-l01",
    env : "vpc-l01"
    Name : var.envrionment
  }
}

resource "aws_subnet" "subnet-l01" {
  vpc_id            = aws_vpc.vpc-l01.id
  cidr_block        = var.cidr_block[1]
  availability_zone = "ap-east-1a"
  tags = {
    Name : "subnet-l01"
  }
}
