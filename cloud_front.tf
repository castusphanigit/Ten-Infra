module "cloudfront" {
  source       = "./modules/cloudfront"
  alb_dns_name = module.fe_alb.dns_name
  acm_cert_arn = var.acm_cert_arn
  # r53_zone_id = var.r53_zone_id
  # r53_name = var.r53_name
  # aliase_zone_id = var.aliase_zone_id
  alternative_domain_names = var.alternative_domain_names
  depends_on               = [module.fe_alb]
}