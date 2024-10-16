terraform {
  backend "s3" {
    bucket  = "hunglh-terraform-remote-state-20240711"
    key     = "environment/test/terraform.tfstate"
    region  = "ap-southeast-1"
    encrypt = true
  }
}

data "terraform_remote_state" "main_vpc" {
  backend = "s3"
  config = {
    bucket = "hunglh-terraform-remote-state-20240711"
    key    = "global/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
