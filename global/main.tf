module "global_resources" {
  source       = "../modules/global"

  project_name = var.project_name
  environment  = var.environment

  # S3 bucket
  bucket_name  = var.remote_bucket_name

}
