# module "web_sg" {
#   source  = "./modules/SG"
#   sg_name = "web-sg"
#   vpc_id  = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTPS"
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow all outbound"
#     }
#   ]

#   sg_tags = {
#     Environment = "dev"
#     Project     = "Ten-app"
#   }
# }


# module "app_sg" {
#   source  = "./modules/SG"
#   sg_name = "app-sg"
#   vpc_id  = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 9330
#       to_port     = 9330
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTPS"
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow all outbound"
#     }
#   ]

#   sg_tags = {
#     Environment = "dev"
#     Project     = "Ten-app"
#   }
# }



# module "db_sg" {
#   source  = "./modules/SG"
#   sg_name = "db-sg"
#   vpc_id  = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 5432
#       to_port     = 5432
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTPS"
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow all outbound"
#     }
#   ]

#   sg_tags = {
#     Environment = "dev"
#     Project     = "Ten-app"
#   }
# }

# module "alb_app_sg" {
#   source  = "./modules/SG"
#   sg_name = "alb-app-sg"
#   vpc_id  = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["11.0.0.0/16"]
#       description = "Allow HTTPS"
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow all outbound"
#     }
#   ]

#   sg_tags = {
#     Environment = "dev"
#     Project     = "Ten-app"
#   }
# }

# module "alb_web_sg" {
#   source  = "./modules/SG"
#   sg_name = "alb-web-sg"
#   vpc_id  = module.vpc.vpc_id

#   ingress_rules = [
#     {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow HTTP"
#     },
#     {
#       from_port   = 443
#       to_port     = 443
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow HTTPS"
#     }
#   ]

#   egress_rules = [
#     {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       description = "Allow all outbound"
#     }
#   ]

#   sg_tags = {
#     Environment = "dev"
#     Project     = "Ten-app"
#   }
# }
