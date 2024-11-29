# Create S3 bucket with public access block
resource "aws_s3_bucket" "s3_bucket" {
  bucket        = var.bucket_name
  force_destroy = false

  tags = merge(
    {
        Name        = var.project_name
        Environment = var.environment
    },
    var.tags
  )
}

resource "aws_s3_bucket_public_access_block" "secure_s3_bucket" {
  bucket = aws_s3_bucket.s3_bucket.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_versioning" "s3_bucket_versioning" {
  bucket = aws_s3_bucket.s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
