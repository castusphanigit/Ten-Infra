
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
  tags   = var.s3_tags

  #   logging {
  #   target_bucket = aws_s3_bucket.log_bucket.id
  #   target_prefix = "s3-access-logs/"
  # }
}


resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
    mfa_delete = true
  }
}

output "bucket_arn" { value = aws_s3_bucket.this.arn }


