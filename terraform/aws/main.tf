provider "aws" {
  region = "ap-east-1"

}

# variable "vpc_cidr_block" {
#   description = "vpc cidr block"
# }

# variable "subnet_cidr_block" {
#   description = "subnet cidr block"
#   default = "10.0.10.0/24"
# }

variable "cidr_block" {
  description = "cidr blocks for vpc and subnets"
  type        = list(string)
}
variable "envrionment" {
  description = "dev envrionment"
}

resource "aws_vpc" "vpc-l01" {
  # cidr_block = "10.0.0.0/16"
  cidr_block = var.vpc_cidr_block
  # 这里对应的是 vpc 的标签部分（在 AWS 控制台）
  tags = {
    # Name : "vpc-l01",
    env : "vpc-l01"
    Name : var.envrionment
  }
}

resource "aws_subnet" "subnet-l01" {
  # 这里是指定子网与上面的 vpc 相关联
  vpc_id = aws_vpc.vpc-l01.id
  # cidr_block        = "10.0.10.0/24"
  # 通过在 apply 时，输入变量值来自定义 cidr 范围
  cidr_block        = var.subnet_cidr_block
  availability_zone = "ap-east-1a"
  tags = {
    Name : "subnet-l01"
  }
}





# # 只是输出你想要的信息
# output "vpc-l01-id" {
#   value = aws_vpc.vpc-l01.id
# }
# output "subnet-l01-id" {
#   value = aws_subnet.subnet-l01.id
# }

# 通过 data 获取原有的资源
# data "aws_vpc" "existing_vpc" {
#   default = true
# }

# resource "aws_subnet" "subnet-l02" {
#   vpc_id = data.aws_vpc.existing_vpc.id
#   # 应该与 default vpc 下的其他子网的地址不同
#   cidr_block        = "172.31.48.0/20"
#   availability_zone = "ap-east-1a"
#   tags = {
#     Name: "subnet-l02"
#   }
# }
