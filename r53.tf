# module "web_r53" {
#   source          = "./modules/route53"
#   zone_id         = var.zone_id
#   record_name     = var.web_record_name
#   target_dns_name = module.cloudfront.name
#   target_zone_id  = module.cloudfront.zone_id
# }

# module "app_r53" {
#   source          = "./modules/route53"
#   zone_id         = var.zone_id
#   record_name     = var.app_record_name
#   target_dns_name = module.be_alb.dns_name
#   target_zone_id  = module.be_alb.alb_hosted_zone
# }