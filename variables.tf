variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-2"
}

variable "aws_profile" {
  description = "AWS CLI profile to use for credentials"
  type        = string
  default     = "pdf-sandbox"
}

variable "owner" {
  description = "Short owner prefix; keeps globally-uniqe names unique"
  type        = string
  default     = "nberra"
}

variable "project_name" {
  description = "Project name used in resource names and tags"
  type        = string
  default     = "html-to-pdf-service"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "environment must be either \"dev\" or \"prod\"."
  }
}

variable "pdf_retention_days" {
  description = "Days before generated PDFs are automatically deleted"
  type        = number
  default     = 7
}