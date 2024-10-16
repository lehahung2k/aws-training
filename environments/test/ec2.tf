module "server_test" {
  source       = "../../modules/services/ec2"
  project_name = var.project_name
  environment  = var.environment
  vpc_id       = data.terraform_remote_state.main_vpc.outputs.vpc_id
  # Subnet
  ec2_subnet_cidr_block = var.ec2_subnet_cidr_block
  availability_zone     = var.availability_zone

  # Security
  allowed_ssh_ips         = var.allowed_ssh_ips
  allowed_access_ips      = var.allowed_access_ips
  allowed_security_groups = var.allowed_security_groups
}
