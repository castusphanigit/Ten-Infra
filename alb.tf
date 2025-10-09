# module "fe_alb" {
#   source             = "./modules/alb"
#   internal           = false
#   name               = var.fe_alb_name
#   subnet_ids         = [module.public_subnet-alb1.subnet_id, module.public_subnet-alb2.subnet_id]
#   security_group_ids = [module.alb_web_sg.sg_id]
#   tags               = var.alb_tags
#   tg_name            = var.fe_target_name
#   target_port        = var.fe_target_port
#   target_protocol    = var.fe_target_protocol
#   vpc_id             = module.vpc.vpc_id
#   health_path        = var.health_path
#   listener_port      = var.fe_listener_port
#   listener_protocol  = var.fe_listener_protocol
#   certificate_arn    = var.certificate_arn

#   depends_on = [module.public_subnet-alb1, module.public_subnet-alb2, module.alb_web_sg]

# }

# module "be_alb" {
#   source             = "./modules/alb"
#   internal           = false
#   name               = var.be_alb_name
#   subnet_ids         = [module.public_subnet-alb1.subnet_id, module.public_subnet-alb2.subnet_id]
#   security_group_ids = [module.alb_app_sg.sg_id]
#   tags               = var.alb_tags
#   tg_name            = var.be_target_name
#   target_port        = var.be_target_port
#   target_protocol    = var.be_target_protocol
#   vpc_id             = module.vpc.vpc_id
#   health_path        = var.health_path
#   listener_port      = var.be_listener_port
#   listener_protocol  = var.be_listener_protocol
#   certificate_arn    = var.certificate_arn

#   depends_on = [module.public_subnet-alb1, module.public_subnet-alb2, module.app_sg]


# }