module "vpc" {
  source              = "../modules/global/vpc"
  project_name        = var.project_name
  vpc_cidr_block      = var.vpc_cidr_block
  private_cidr_blocks = var.private_cidr_blocks
  public_cidr_blocks  = var.public_cidr_blocks
  azs                 = var.azs
}
