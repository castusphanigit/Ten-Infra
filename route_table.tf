module "Private_RT" {
  source     = "./modules/RT"
  vpc_id     = module.vpc.vpc_id
  gateway_id = module.nat.nat_gateway_id
  rt_tags    = var.private_rt_tags
  # subnet_id = module.private_subnet-db1.subnet_id
  # module.private_subnet-db2.subnet_id,
  # module.private_subnet-app1.subnet_id,
  # module.private_subnet-app2.subnet_id,
  # module.private_subnet-web1.subnet_id,
  # module.private_subnet-web2.subnet_id       
}





module "Public_RT" {
  source     = "./modules/RT"
  vpc_id     = module.vpc.vpc_id
  gateway_id = module.vpc.internet_gateway_id
  rt_tags    = var.public_rt_tags
  # module.public_subnet-alb2.subnet_id,
  # module.public_subnet.subnet_id
}


