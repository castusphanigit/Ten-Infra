variable "cluster_name" { type = string }
variable "task_family" { type = string }
variable "execution_role_arn" { type = string }
variable "service_name" { type = string }
variable "desired_count" {}
variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }
variable "assign_public_ip" {}
variable "target_group_arn" { type = string }
variable "container_name" { type = string }
variable "container_port" { type = number }
variable "cpu" {}
variable "memory" {}
variable "task_definition_name" {}
variable "image_name" {}
variable "host_port" {}
# variable "log_group_name" {}


