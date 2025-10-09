## Public Route Table
resource "aws_route_table" "route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gateway_id
  }

  tags = var.rt_tags
  # depends_on = [ modules.subnet ]
}

# resource "aws_route_table_association" "subnet_assoc" {
#   subnet_id      = var.subnet_id
#   route_table_id = aws_route_table.route_table.id
#   # depends_on = [ aws_route_table.route_table ]
# }

output "route_table_id" {
  value = aws_route_table.route_table.id
}
