# Deploy a Linux EC2 Web Server Using Terraform

**Author:** Chandresh Kumar

## Project Overview

This project demonstrates how to deploy a Linux web server on AWS using Terraform Infrastructure as Code (IaC).

Terraform automatically provisions AWS infrastructure, launches an Ubuntu EC2 instance, configures network access, and deploys a website using Apache.

## Technologies Used

- Amazon Web Services (AWS)
- Terraform
- Ubuntu 24.04 LTS
- Apache Web Server
- Bash Scripting
- Git and GitHub

## AWS Infrastructure

The project provisions:

1. Amazon VPC
2. Public Subnet
3. Internet Gateway
4. Route Table
5. Security Group
6. EC2 Instance

## Security Configuration

- HTTP port 80 is allowed for website access.
- SSH port 22 is not opened.
- RDP port 3389 is not opened.
- Outbound traffic is allowed.

## Project Structure

```text
aws-terraform-webserver/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .terraform.lock.hcl
├── .gitignore
├── README.md
└── scripts/
    └── install_apache.sh
```

## Deployment Steps

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Validate Configuration

```bash
terraform validate
```

### 3. Format Terraform Files

```bash
terraform fmt -recursive
```

### 4. Review Deployment Plan

```bash
terraform plan
```

### 5. Deploy Infrastructure

```bash
terraform apply
```

### 6. Get Website URL

```bash
terraform output website_url
```

## Live Website

[Open AWS Web Server](http://13.207.188.87)

## Verification

The website was successfully tested and returned:

```text
HTTP/1.1 200 OK
Server: Apache/2.4.58 (Ubuntu)
```

## Learning Outcomes

- Understanding Infrastructure as Code.
- Creating AWS infrastructure using Terraform.
- Configuring VPC networking.
- Deploying an Ubuntu EC2 instance.
- Automating Apache installation using Bash.
- Hosting a website on AWS.
- Managing source code using Git.

---

**Developed by Chandresh Kumar**
