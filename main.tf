
# ==========================================
# Project: IAM User Automation
# Owner: Chandresh Kumar
# ==========================================

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  required_version = ">= 1.5.0"
}

# AWS Provider Configuration
provider "aws" {
  region = var.aws_region
}

# Create IAM User
resource "aws_iam_user" "s3_read_user" {
  name = var.iam_user_name

  tags = {
    Name      = var.iam_user_name
    Owner     = var.owner
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

# Create Custom S3 Read-Only IAM Policy
resource "aws_iam_policy" "s3_read_policy" {
  name        = "s3-read-policy-Chandresh"
  description = "S3 read-only policy created by Chandresh Kumar"

  policy = var.s3_read_policy

  tags = {
    Name      = "s3-read-policy-Chandresh"
    Owner     = var.owner
    Project   = var.project_name
    ManagedBy = "Terraform"
  }
}

# Attach S3 Read-Only Policy to IAM User
resource "aws_iam_user_policy_attachment" "s3_read_attachment" {
  user       = aws_iam_user.s3_read_user.name
  policy_arn = aws_iam_policy.s3_read_policy.arn
}

