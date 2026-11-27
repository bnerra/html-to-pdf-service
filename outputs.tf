output "bucket_name" {
  description = "Name of the PDF output bucket"
  value       = aws_s3_bucket.pdf_output.bucket
}

output "bucket_arn" {
  description = "ARN of the PDF output bucket"
  value       = aws_s3_bucket.pdf_output.arn
}