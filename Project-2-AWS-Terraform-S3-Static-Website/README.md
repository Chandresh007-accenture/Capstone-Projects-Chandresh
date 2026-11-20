# Host a Static Website on Amazon S3 using Terraform

## Project Overview

This project demonstrates how to host a static website on Amazon S3 using Terraform.

The infrastructure is provisioned using Infrastructure as Code (IaC).

## Technologies Used

- Amazon Web Services (AWS)
- Amazon S3
- Terraform
- HTML
- CSS
- Git and GitHub

## Architecture

User → Internet → Amazon S3 Static Website Hosting

## AWS Configuration

- AWS Region: ap-south-1 (Mumbai)
- S3 Bucket: terraform-static-website-chandresh-2026
- Website file: index.html
- Infrastructure management: Terraform

## Live Website

[Visit My Website](http://terraform-static-website-chandresh-2026.s3-website.ap-south-1.amazonaws.com)

## Project Structure

```text
aws-terraform-s3-static-website/
├── main.tf
├── providers.tf
├── variables.tf
├── outputs.tf
├── .gitignore
├── .terraform.lock.hcl
└── website/
    └── index.html
```

## Deployment Steps

1. Configure AWS CLI credentials.
2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Validate configuration:

   ```bash
   terraform validate
   ```

4. Review deployment plan:

   ```bash
   terraform plan
   ```

5. Deploy infrastructure:

   ```bash
   terraform apply
   ```

6. Verify the website:

   ```bash
   curl -I http://terraform-static-website-chandresh-2026.s3-website.ap-south-1.amazonaws.com
   ```

## Terraform Resources Created

- S3 Bucket
- S3 Static Website Configuration
- S3 Public Access Block
- S3 Bucket Policy
- S3 Object

## Project Result

Successfully deployed a static website on Amazon S3 using Terraform.

Terraform deployment result:

```text
Apply complete! Resources: 5 added, 0 changed, 0 destroyed.
```

## Author

Chandresh Kumar
