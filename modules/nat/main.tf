# -------------------------
# Elastic IP for NAT
# -------------------------
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "nat-eip"
  }
}



resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.pub_sub_id

  tags = var.nat_tags

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [modules.vpc, modules.subnet]
}

output "nat_gateway_id" {

  value = aws_nat_gateway.example.id
}