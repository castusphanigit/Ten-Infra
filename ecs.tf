# module "FE_Fargate" {
#   source               = "./modules/ecs_fargate"
#   cluster_name         = var.fe_cluster_name
#   task_family          = var.fe_task_family
#   cpu                  = var.cpu
#   memory               = var.memory
#   execution_role_arn   = var.execution_role_arn
#   task_definition_name = var.fe_task_definition_name
#   image_name           = module.fe_ecr.repository_url
#   container_port       = var.fe_container_port
#   host_port            = var.fe_host_port
#   # log_group_name = var.fe_log_group_name
#   service_name       = var.fe_service_name
#   subnet_ids         = [module.private_subnet-web1.subnet_id]
#   security_group_ids = [module.web_sg.sg_id]
#   assign_public_ip   = var.fe_assign_public_ip
#   target_group_arn   = module.fe_alb.tg_arn
#   container_name     = var.fe_container_name
#   desired_count      = var.fe_desired_count
#   depends_on         = [module.private_subnet-web1]
# }


# module "BE_Fargate" {
#   source               = "./modules/ecs_fargate"
#   cluster_name         = var.be_cluster_name
#   task_family          = var.be_task_family
#   cpu                  = var.cpu
#   memory               = var.memory
#   execution_role_arn   = var.execution_role_arn
#   task_definition_name = var.be_task_definition_name
#   image_name           = module.be_ecr.repository_url
#   container_port       = var.be_container_port
#   host_port            = var.be_host_port
#   # log_group_name = var.be_log_group_name
#   service_name       = var.be_service_name
#   subnet_ids         = [module.private_subnet-app1.subnet_id]
#   security_group_ids = [module.app_sg.sg_id]
#   assign_public_ip   = var.be_assign_public_ip
#   target_group_arn   = module.be_alb.tg_arn
#   container_name     = var.be_container_name
#   desired_count      = var.be_desired_count
#   depends_on         = [module.private_subnet-app1]
# }