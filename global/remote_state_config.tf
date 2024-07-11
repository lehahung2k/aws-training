terraform {
  backend "s3" {
    bucket  = var.remote_bucket_name
    key     = "global/terraform.tfstate"
    region  = var.region
    encrypt = true
  }
}
