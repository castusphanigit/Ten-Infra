resource "aws_subnet" "subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = var.map_public_ip
  tags = merge(
    var.subnet_tags,
    {
      Name = var.subnet_name
    }
  )
}




# resource "aws_subnet" "subnet" {
#   for_each = var.subnets

#   vpc_id                  = var.vpc_id
#   cidr_block              = each.value.cidr_block
#   availability_zone       = each.value.availability_zone
#   map_public_ip_on_launch = each.value.map_public_ip
#   tags                    = each.value.tags
#   # depends_on = [modules.vpc]
# }
