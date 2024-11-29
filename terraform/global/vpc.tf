module "vpc" {
  source         = "../modules/global/vpc"
  project_name   = var.project_name
  vpc_cidr_block = var.vpc_cidr_block
}
