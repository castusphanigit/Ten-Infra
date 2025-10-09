########ALB##############
variable "fe_alb_name" { type = string }
# variable "alb_subnet_ids" { type = list(string) }
# variable "vpc_id" { type = string }
# variable "alb_sg" {}
variable "fe_target_port" { type = number }
variable "be_target_port" { type = number }
variable "fe_target_protocol" {}
variable "fe_listener_port" {}
variable "fe_listener_protocol" {}
variable "health_path" {}
variable "internal" {}
variable "alb_tags" {}
variable "certificate_arn" {}
variable "fe_target_name" {}
variable "be_alb_name" {}
variable "be_target_name" {}
variable "be_target_protocol" {}
variable "be_listener_port" {}
variable "be_listener_protocol" {}


#######CloudFront###############
# variable "alb_dns_name" {}
variable "alternative_domain_names" {}
variable "acm_cert_arn" {}
# variable "r53_zone_id" { }
# variable "r53_name" { }
# variable "aliase_zone_id" {}


######ECR########################
variable "fe_ecr_name" {}
variable "scan_on_push" {}
variable "fe_ecr_tags" {}

variable "be_ecr_name" {}
variable "be_ecr_tags" {}


###########NAT##############
# variable "pub_sub_id" {}
variable "nat_tags" {}


###########ECS#####################
variable "fe_cluster_name" { type = string }
variable "fe_task_family" { type = string }
variable "execution_role_arn" { type = string }
variable "fe_service_name" { type = string }
variable "fe_desired_count" {}
# variable "fe_subnet_ids" { type = list(string) }
# variable "fe_security_group_ids" { type = list(string) }
variable "fe_assign_public_ip" {}
# variable "fe_target_group_arn" { type = string }
variable "fe_container_name" { type = string }
variable "fe_container_port" { type = number }
variable "cpu" {}
variable "memory" {}
variable "fe_task_definition_name" {}
# variable "fe_image_name" {}
variable "fe_host_port" {}
# variable "fe_log_group_name" {}


variable "be_cluster_name" { type = string }
variable "be_task_family" { type = string }
variable "be_service_name" { type = string }
variable "be_desired_count" {}
# variable "be_subnet_ids" { type = list(string) }
# variable "be_security_group_ids" { type = list(string) }
variable "be_assign_public_ip" {}
# variable "be_target_group_arn" { type = string }
variable "be_container_name" { type = string }
variable "be_container_port" { type = number }
variable "be_task_definition_name" {}
# variable "be_image_name" {}
variable "be_host_port" {}
# variable "be_log_group_name" {}

###############RDS#######################
variable "db_secret_name" {}
variable "engine_version" {}
variable "db_name" {}
variable "instance_class" {}
# variable "security_group_ids" {}
variable "rds_tags" {}
variable "db_subnet_group" {}
variable "rds_name" {}
# variable "subnet_ids" {}

############Route 53####################
variable "zone_id" { type = string }
variable "web_record_name" { type = string }
# variable "target_dns_name" { type = string }
# variable "target_zone_id" { type = string }
variable "app_record_name" { type = string }

###############Route Tables##############

variable "private_rt_tags" {}
variable "public_rt_tags" {}




#############S3############
variable "bucket_name" { type = string }
variable "s3_tags" {}


#######################Secrets########################

variable "fe_existing-secret" {}
variable "new_fe_secret" {}
variable "be_existing-secret" {}
variable "new_be_secret" {}

####################SG#######################
# variable "sg_name" {}
# variable "vpc_id" {}
# variable "cidr_range" {}
# variable "from_port" {}
# variable "to_port" {}


####################Subnet######################
# variable "vpc_id" { type = string }
variable "map_public_ip" {}

variable "db1_subnet_tags" {}
variable "db1_subnet_cidr" {}
variable "db1_availability_zone" {}
variable "db1_subnet_name" {}


variable "db2_subnet_tags" {}
variable "db2_subnet_cidr" {}
variable "db2_availability_zone" {}
variable "db2_subnet_name" {}


variable "web1_subnet_tags" {}
variable "web1_subnet_cidr" {}
variable "web1_availability_zone" {}
variable "web1_subnet_name" {}


variable "web2_subnet_tags" {}
variable "web2_subnet_cidr" {}
variable "web2_availability_zone" {}
variable "web2_subnet_name" {}


variable "app1_subnet_tags" {}
variable "app1_subnet_cidr" {}
variable "app1_availability_zone" {}
variable "app1_subnet_name" {}


variable "app2_subnet_tags" {}
variable "app2_subnet_cidr" {}
variable "app2_availability_zone" {}
variable "app2_subnet_name" {}


variable "alb1_subnet_tags" {}
variable "alb1_subnet_cidr" {}
variable "alb1_availability_zone" {}
variable "alb1_subnet_name" {}


variable "alb2_subnet_tags" {}
variable "alb2_subnet_cidr" {}
variable "alb2_availability_zone" {}
variable "alb2_subnet_name" {}


variable "pub_subnet_tags" {}
variable "pub_subnet_cidr" {}
variable "pub_availability_zone" {}
variable "pub_subnet_name" {}



##################VPC###############
# variable "name" { type = string }
variable "cidr" { type = string }
variable "vpc_tags" {}
variable "igw_tags" {}
