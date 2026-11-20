
# IAM User Automation with Terraform

**Project Owner:** Chandresh Kumar

## Project Overview

This project automates AWS IAM user creation using Terraform.

## Project Objectives

- Create an AWS IAM user.
- Create a custom S3 read-only IAM policy.
- Store the IAM policy as a Terraform variable.
- Attach the policy to the IAM user.
- Follow AWS least-privilege principles.

## Technologies Used

- AWS IAM
- Terraform
- AWS CLI
- Git
- GitHub

## IAM Resources

| Resource | Name |
|---|---|
| IAM User | s3-read-user-Chandresh |
| IAM Policy | s3-read-policy-Chandresh |
| Owner | Chandresh Kumar |
| AWS Region | ap-south-1 |

## Terraform Files

- `main.tf` - AWS provider and IAM resources.
- `variables.tf` - Terraform input variables and S3 policy.
- `outputs.tf` - Terraform outputs.
- `.gitignore` - Protects sensitive and generated files.

## Deployment Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

## Security

The IAM policy grants S3 read and list permissions only.


## Project Owner

Chandresh Kumar

