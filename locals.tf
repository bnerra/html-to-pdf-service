locals {
  name_prefix = "${var.project_name}-${var.environment}"
  bucket_name = "${var.owner}-${local.name_prefix}-pdfs"
}