resource "aws_vpc" "ten-vpc" {
  cidr_block = var.cidr
  tags       = var.vpc_tags
}

resource "aws_internet_gateway" "this" {
  vpc_id     = aws_vpc.ten-vpc.id
  tags       = var.igw_tags
  depends_on = [aws_vpc.ten-vpc]
}


