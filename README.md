
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


## Screenshots and Test Evidence

The following screenshots demonstrate the successful implementation and verification of this project.

### 1. Terraform Execution Plan

[View Terraform Plan](screenshots/Project%204%20-%2001-terraform-plan.png)

### 2. Terraform Deployment Success

[View Terraform Apply Success](screenshots/Project%204%20-%2002-terraform-apply-success.png)

### 3. IAM User Creation and Policy Attachment

[View IAM User](screenshots/Project%204%20-%2003-IAM-User.png)

### 4. IAM User Tags

[View IAM User Tags](screenshots/Project%204%20-%2004-IAM-User-Tags.png)

### 5. S3 Read-Only IAM Policy

[View S3 Read-Only Policy](screenshots/Project%204%20-%2005-S3-Read-Only-Policy.png)

---

## Project Completion

- [x] Terraform configuration created.
- [x] IAM user created successfully.
- [x] Custom S3 read-only policy created.
- [x] Policy attached to IAM user.
- [x] Terraform validation successful.
- [x] AWS resources verified.
- [x] Test evidence captured.
- [x] GitHub repository updated.

**Project Owner:** 
  Chandresh Kumar

