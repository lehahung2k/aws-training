terraform {
  backend "s3" {
    bucket  = "hunglh-terraform-remote-state-20240711"
    key     = "global/terraform.tfstate"
    region  = "ap-southeast-1"
    encrypt = true
  }
}
