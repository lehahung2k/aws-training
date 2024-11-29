module "s3_state" {
  source       = "../modules/global/s3"
  project_name = var.project_name
  environment  = var.environment
  bucket_name  = var.remote_bucket_name
}
