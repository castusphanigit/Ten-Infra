module "vpc" {
  source   = "./modules/vpc"
  cidr     = var.cidr
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags
}
