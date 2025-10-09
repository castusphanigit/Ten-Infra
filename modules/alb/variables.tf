variable "tg_name" { type = string }
variable "subnet_ids" { type = list(string) }
variable "vpc_id" { type = string }
variable "security_group_ids" { type = list(string) }
variable "target_port" { type = number }
variable "target_protocol" {}
variable "listener_port" {}
variable "listener_protocol" {}
variable "health_path" {}
variable "internal" {}
variable "tags" {}
variable "certificate_arn" {}
variable "name" {}