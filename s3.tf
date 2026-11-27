resource "aws_s3_bucket" "pdf_output" {
  bucket = local.bucket_name
}

resource "aws_s3_bucket_public_access_block" "pdf_output" {
  bucket = aws_s3_bucket.pdf_output.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_lifecycle_configuration" "pdf_output" {
  bucket = aws_s3_bucket.pdf_output.id

  rule {
    id     = "expire-generated-pdfs"
    status = "Enabled"

    filter {
      prefix = "pdfs/"
    }

    expiration {
      days = var.pdf_retention_days
    }
  }
}