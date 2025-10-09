# module "private_subnet-db1" {
#   source            = "./modules/subnet"
#   subnet_name       = var.db1_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.db1_subnet_cidr
#   availability_zone = var.db1_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.db1_subnet_tags
# }

# resource "aws_route_table_association" "db1_subnet_assoc" {
#   subnet_id      = module.private_subnet-db1.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   # depends_on = [ aws_route_table.route_table ]
#   depends_on = [module.Private_RT, module.Public_RT]
# }

# module "private_subnet-db2" {
#   source            = "./modules/subnet"
#   subnet_name       = var.db2_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.db2_subnet_cidr
#   availability_zone = var.db2_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.db2_subnet_tags
# }

# resource "aws_route_table_association" "db2_subnet_assoc" {
#   subnet_id      = module.private_subnet-db2.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "private_subnet-app1" {
#   source            = "./modules/subnet"
#   subnet_name       = var.app1_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.app1_subnet_cidr
#   availability_zone = var.app1_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.app1_subnet_tags
# }

# resource "aws_route_table_association" "app1_subnet_assoc" {
#   subnet_id      = module.private_subnet-app1.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "private_subnet-app2" {
#   source            = "./modules/subnet"
#   subnet_name       = var.app2_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.app2_subnet_cidr
#   availability_zone = var.app2_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.app2_subnet_tags
# }
# resource "aws_route_table_association" "app2_subnet_assoc" {
#   subnet_id      = module.private_subnet-app2.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "private_subnet-web1" {
#   source            = "./modules/subnet"
#   subnet_name       = var.web1_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.web1_subnet_cidr
#   availability_zone = var.web1_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.web1_subnet_tags
# }

# resource "aws_route_table_association" "web1_subnet_assoc" {
#   subnet_id      = module.private_subnet-web1.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "private_subnet-web2" {
#   source            = "./modules/subnet"
#   subnet_name       = var.web2_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.web2_subnet_cidr
#   availability_zone = var.web2_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.web2_subnet_tags
# }

# resource "aws_route_table_association" "web2_subnet_assoc" {
#   subnet_id      = module.private_subnet-web2.subnet_id
#   route_table_id = module.Private_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }


# module "public_subnet-alb1" {
#   source            = "./modules/subnet"
#   subnet_name       = var.alb1_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.alb1_subnet_cidr
#   availability_zone = var.alb1_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.alb1_subnet_tags
# }

# resource "aws_route_table_association" "alb1_subnet_assoc" {
#   subnet_id      = module.public_subnet-alb1.subnet_id
#   route_table_id = module.Public_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "public_subnet-alb2" {
#   source            = "./modules/subnet"
#   subnet_name       = var.alb2_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.alb2_subnet_cidr
#   availability_zone = var.alb2_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.alb2_subnet_tags
# }

# resource "aws_route_table_association" "alb2_subnet_assoc" {
#   subnet_id      = module.public_subnet-alb2.subnet_id
#   route_table_id = module.Public_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }

# module "public_subnet" {
#   source            = "./modules/subnet"
#   subnet_name       = var.pub_subnet_name
#   vpc_id            = module.vpc.vpc_id
#   subnet_cidr       = var.pub_subnet_cidr
#   availability_zone = var.pub_availability_zone
#   map_public_ip     = var.map_public_ip
#   subnet_tags       = var.pub_subnet_tags
# }


# resource "aws_route_table_association" "public_subnet_assoc" {
#   subnet_id      = module.public_subnet.subnet_id
#   route_table_id = module.Public_RT.route_table_id
#   depends_on     = [module.Private_RT, module.Public_RT]
#   # depends_on = [ aws_route_table.route_table ]
# }











































# # # module "subnets" {
# # #   source   = "./modules/subnet"
# # #   subnets = var.subnets
# # #   for_each = var.subnets
# # #   vpc_id            = module.vpc.vpc_id
# # #   subnet_cidr       = each.value.cidr_block
# # #   availability_zone = each.value.availability_zone
# # #   map_public_ip     = each.value.map_public_ip
# # #   subnet_tags       = each.value.tags
# # #   depends_on = [ module.vpc ]
# # # }

# # module "subnets" {
# #   source  = "./modules/subnet"
# #   vpc_id  = module.vpc.vpc_id
# #   subnets = var.subnets   # pass the full map here
# #   }