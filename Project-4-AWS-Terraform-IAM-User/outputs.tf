
# ==========================================
# Project: IAM User Automation
# Owner: Chandresh Kumar
# ==========================================

output "iam_user_name" {
  description = "Created IAM username"
  value       = aws_iam_user.s3_read_user.name
}

output "iam_user_arn" {
  description = "ARN of the created IAM user"
  value       = aws_iam_user.s3_read_user.arn
}

output "s3_read_policy_arn" {
  description = "ARN of the custom S3 read-only policy"
  value       = aws_iam_policy.s3_read_policy.arn
}

output "project_owner" {
  description = "Project owner"
  value       = var.owner
}

