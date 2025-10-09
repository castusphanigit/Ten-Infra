# module "nat" {
#   source     = "./modules/nat"
#   pub_sub_id = module.public_subnet.subnet_id
#   nat_tags   = var.nat_tags
#   depends_on = [module.public_subnet]
# }