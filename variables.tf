
variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
  default     = "terraform-static-website-chandresh-2026"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

