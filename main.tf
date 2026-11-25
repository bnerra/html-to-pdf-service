terraform {
  required_version = ">= 1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-east-2"
  profile = "pdf-sandbox"

  default_tags {
    tags = {
      Project   = "html-to-pdf-service"
      ManagedBy = "terraform"
      Purpose   = "generated-pdfs"
    }
  }
}

resource "aws_s3_bucket" "pdf_output" {
  bucket = "nberra-pdf-output-dev"
}