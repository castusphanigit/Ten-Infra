# module "rds" {
#   source             = "./modules/RDS"
#   rds_name           = var.rds_name
#   db_subnet_group    = var.db_subnet_group
#   subnet_ids         = [module.private_subnet-db1.subnet_id, module.private_subnet-db2.subnet_id]
#   db_secret_name     = var.db_secret_name
#   engine_version     = var.engine_version
#   instance_class     = var.instance_class
#   db_name            = var.db_name
#   security_group_ids = [module.db_sg.sg_id]
#   rds_tags           = var.rds_tags
#   # depends_on         = [module.be_secret]

# }