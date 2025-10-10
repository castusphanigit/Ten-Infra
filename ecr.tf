module "fe_ecr" {
  source       = "./modules/ecr"
  ecr_name     = var.fe_ecr_name
  scan_on_push = var.scan_on_push
  ecr_tags     = var.fe_ecr_tags
}


module "be_ecr" {
  source       = "./modules/ecr"
  ecr_name     = var.be_ecr_name
  scan_on_push = var.scan_on_push
  ecr_tags     = var.be_ecr_tags
}