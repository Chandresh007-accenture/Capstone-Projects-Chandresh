
variable "aws_region" {
  description = "AWS region for Chandresh Kumar's IAM project"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project identifier"
  type        = string
  default     = "iam-user-automation-Chandresh-Kumar"
}

variable "iam_user_name" {
  description = "IAM user created by Chandresh Kumar"
  type        = string
  default     = "s3-read-user-Chandresh"
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "Chandresh Kumar"
}

variable "s3_read_policy" {
  description = "IAM policy allowing read-only access to S3"
  type        = string

  default = <<-EOT
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "s3:Get*",
          "s3:List*"
        ],
        "Resource": "*"
      }
    ]
  }
  EOT
}

