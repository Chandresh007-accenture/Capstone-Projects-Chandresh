# AWS EC2 State Monitoring with CloudWatch Alarm

## Project Overview

This project uses Terraform to provision an Amazon EC2 instance and monitor its CPU utilization using Amazon CloudWatch.

A CloudWatch alarm monitors CPU utilization and changes its state when the configured threshold is exceeded.

## Technologies Used

- Amazon Web Services (AWS)
- Amazon EC2
- Amazon CloudWatch
- Terraform
- Ubuntu 24.04
- Git and GitHub

## Architecture

The project provisions the following resources:

1. An EC2 instance running Ubuntu 24.04.
2. A dedicated security group with no inbound rules.
3. A CloudWatch CPU utilization alarm.

The EC2 instance is deployed into an existing VPC and subnet.

## Project Configuration

| Configuration | Value |
|---|---|
| AWS Region | ap-south-1 |
| Operating System | Ubuntu 24.04 |
| Instance Type | t3.micro |
| CPU Alarm Threshold | 70% |
| Metric | CPUUtilization |
| Monitoring Period | 300 seconds |
| Evaluation Periods | 1 |
| Root Volume | 8 GB gp3 |

## Security

- No inbound security group rules.
- SSH (port 22) and RDP (port 3389) are not exposed.
- No public IP is assigned to the EC2 instance.
- EC2 metadata service requires IMDSv2 tokens.
- AWS credentials are not stored in this repository.

## Repository Structure

```text
cloudwatch-monitoring-Chandresh/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

## Deployment Instructions

### 1. Prerequisites

Install and configure:

- AWS CLI
- Terraform
- Git

Configure AWS credentials using a secure method.

### 2. Clone the repository

```bash
git clone https://github.com/Chandresh007-accenture/cloudwatch-monitoring-Chandresh.git
cd cloudwatch-monitoring-Chandresh
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Configure variables

Create your local variable file:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Update the values in `terraform.tfvars` for your AWS environment.

### 5. Validate the configuration

```bash
terraform validate
```

### 6. Review the deployment plan

```bash
terraform plan
```

### 7. Deploy the infrastructure

```bash
terraform apply
```

Review the plan and confirm before applying.

### 8. View Terraform outputs

```bash
terraform output
```

## CloudWatch Alarm Testing

The alarm was tested by temporarily changing its CPU threshold from 70% to 5%.

During testing, CloudWatch detected CPU utilization of approximately 9.76%, exceeding the temporary threshold and changing the alarm state to `ALARM`.

The original threshold of 70% was then restored, and the alarm returned to `OK`.

This test verified alarm evaluation at 5%; it did not demonstrate CPU utilization exceeding 70%.

## Cleanup

To remove the resources created by this Terraform configuration:

```bash
terraform destroy
```

Review the resources before confirming destruction.

**Important:** This project reuses an existing VPC and subnet. Terraform cleanup should remove only the resources managed by this project, not shared networking infrastructure.

## Author

**Chandresh Kumar**
