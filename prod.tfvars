# region = "ap-south-1"

################VPC################
cidr = "11.0.0.0/16"
vpc_tags = {
  name = "TEN-VPC-DEV"
}
igw_tags = {
  name = "TEN-IGW"
}

#################Subnet####################
map_public_ip = "false"
# name { type = string }

# azs { }
db1_subnet_tags       = { name = "ten-private-db-subnet-az1" }
db1_subnet_cidr       = "11.0.144.0/20"
db1_availability_zone = "ap-south-1a"
db1_subnet_name       = "ten-private-db-subnet-az1"

db2_subnet_tags       = { name = "ten-private-db-subnet-az2" }
db2_subnet_cidr       = "11.0.128.0/20"
db2_availability_zone = "ap-south-1b"
db2_subnet_name       = "ten-private-db-subnet-az2"

web1_subnet_tags       = { name = "ten-private-web-subnet-az1" }
web1_subnet_cidr       = "11.0.16.0/20"
web1_availability_zone = "ap-south-1a"
web1_subnet_name       = "ten-private-db-subnet-az1"

web2_subnet_tags       = { name = "ten-private-web-subnet-az2" }
web2_subnet_cidr       = "11.0.32.0/20"
web2_availability_zone = "ap-south-1b"
web2_subnet_name       = "ten-private-db-subnet-az2"


app1_subnet_tags       = { name = "ten-private-app-subnet-az1" }
app1_subnet_cidr       = "11.0.64.0/20"
app1_availability_zone = "ap-south-1a"
app1_subnet_name       = "ten-private-db-subnet-az1"

app2_subnet_tags       = { name = "ten-private-app-subnet-az2" }
app2_subnet_cidr       = "11.0.80.0/20"
app2_availability_zone = "ap-south-1b"
app2_subnet_name       = "ten-private-db-subnet-az2"

alb1_subnet_tags       = { name = "ten-private-alb-subnet-az1" }
alb1_subnet_cidr       = "11.0.0.0/24"
alb1_availability_zone = "ap-south-1a"
alb1_subnet_name       = "ten-private-alb-subnet-az1"

alb2_subnet_tags       = { name = "ten-private-alb-subnet-az2" }
alb2_subnet_cidr       = "11.0.1.0/24"
alb2_availability_zone = "ap-south-1b"
alb2_subnet_name       = "ten-private-alb-subnet-az2"

pub_subnet_tags       = { name = "Ten-Public-subnet" }
pub_subnet_cidr       = "11.0.255.0/24"
pub_availability_zone = "ap-south-1a"
pub_subnet_name       = "Ten-Public-subnet"

###################RT######################################
private_rt_tags = {
  name = "Ten_Private_RT"
}
public_rt_tags = {
  name = "Ten_Public_RT"
}

##############NAT###############

nat_tags = {
  name = "TEN_NAT_Gateway"
}

####################Secrets####################
fe_existing-secret = "FE_Nextgen_Secreats"
new_fe_secret      = "Test_FE_Nextgen_Secreats"
be_existing-secret = "BE_Nextgen_Secreats"
new_be_secret      = "Test_BE_Nextgen_Secreats"



####################S3####################
bucket_name = "ten-app-s3-bucket"
s3_tags = {
  env = "Ten_app"
}


########################RDS##########################
db_secret_name = "tennextdb-secrete"
engine_version = "17.4"
db_name        = "tennextgendb"
instance_class = "db.t3.small"
# security_group_ids = ""
rds_tags = {
  env = "dev"
}
rds_name        = "tennextgendb"
db_subnet_group = "ten_app_subnet_goup"

#####################ECS###########################
fe_cluster_name         = "ten-app-fe-cluster"
fe_task_family          = "ten-app-fe-task"
execution_role_arn      = "arn:aws:iam::593002333172:role/ecsTaskExecutionRole"
fe_service_name         = "ten-app-fe-sevice"
fe_desired_count        = "1"
fe_assign_public_ip     = false
fe_container_name       = "ten-app-fe-task"
fe_container_port       = 80
cpu                     = 1024
memory                  = 3072
fe_task_definition_name = "ten-app-fe-task"
# fe_image_name = ""
fe_host_port      = 80
fe_log_group_name = "ten-app-fe-cluster"


be_cluster_name = "ten-app-be-cluster"
be_task_family  = "ten-app-be-task"
# execution_role_arn = "arn:aws:iam::593002333172:role/ecsTaskExecutionRole"
be_service_name     = "ten-app-be-sevice"
be_desired_count    = "1"
be_assign_public_ip = false
be_container_name   = "ten-app-be-task"
be_container_port   = 9330
# cpu = "1"
# memory = "3GB"
be_task_definition_name = "ten-app-be-task"
# be_image_name = ""
be_host_port      = 9330
be_log_group_name = "ten-app-be-cluster"


#######################ECR#######################
fe_ecr_name  = "ten-fe-ec-repo"
scan_on_push = false
fe_ecr_tags = {
  env = "dev"

}

be_ecr_name = "ten-be-ec-repo"
be_ecr_tags = {
  env = "dev"
}




#######################ALB#############################
fe_alb_name          = "ten-fe-alb"
fe_target_port       = "80"
fe_target_protocol   = "HTTP"
fe_listener_port     = "443"
fe_listener_protocol = "HTTPS"
health_path          = "/"
internal             = false
alb_tags = {
  env = "dev"
}
certificate_arn      = "arn:aws:acm:ap-south-1:593002333172:certificate/f1840cb2-a63e-4eb4-9263-93b931ffaf34"
fe_target_name       = "Fe-TG"
be_alb_name          = "ten-be-alb"
be_target_name       = "Be-TG"
be_target_port       = "9330"
be_target_protocol   = "HTTP"
be_listener_port     = "443"
be_listener_protocol = "HTTPS"

########################CloudFront Distribution##################
acm_cert_arn             = "arn:aws:acm:us-east-1:593002333172:certificate/6c73887a-85c7-4dce-b759-554809da55bf"
alternative_domain_names = ["testcp.mindwavesolutions.com"]


################################Route 53 ############################
zone_id     = "Z056042729UX8ZNNN1SOS"
web_record_name = "testcp.mindwavesolutions.com"
app_record_name = "testcpapi.mindwavesolutions.com"
