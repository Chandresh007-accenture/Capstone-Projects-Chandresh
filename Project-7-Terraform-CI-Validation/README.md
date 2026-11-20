# Project 7 – CI Validation for Terraform

[![Terraform CI Validation](https://github.com/Chandresh007-accenture/Project7-terraform-ci-validation-Chandresh/actions/workflows/terraform-validation.yml/badge.svg)](https://github.com/Chandresh007-accenture/Project7-terraform-ci-validation-Chandresh/actions)

## Project Overview

This project demonstrates Continuous Integration (CI) for Terraform using GitHub Actions.

The workflow automatically checks Terraform formatting and validates the Terraform configuration whenever code is pushed to the main branch or a Pull Request is created against main.

## Project Goal

Automate Infrastructure as Code (IaC) checks using GitHub Actions.

## Tools Used

- Terraform
- Git
- GitHub
- GitHub Actions
- Ubuntu

## Project Structure

```text
terraform-ci-validation-Chandresh/
├── .github/
│   └── workflows/
│       └── terraform-validation.yml
├── .gitignore
├── README.md
├── main.tf
└── outputs.tf
```

## Automated CI Checks

The GitHub Actions workflow performs these steps:

1. Checkout repository.
2. Setup Terraform.
3. Check Terraform formatting using `terraform fmt -check -recursive`.
4. Initialize Terraform using `terraform init -backend=false`.
5. Validate the configuration using `terraform validate`.

## Workflow Triggers

The pipeline runs automatically when:

- Code is pushed to the main branch.
- A Pull Request is created or updated against the main branch.

## Terraform Configuration

This project uses Terraform's built-in `terraform_data` resource to demonstrate Terraform configuration and validation.

No AWS resources or cloud infrastructure are deployed.

## Local Validation

Run these commands to check the Terraform configuration locally:

```bash
terraform fmt -recursive
terraform init
terraform validate
```

## GitHub Actions Pipeline

View the workflow and execution results:

[Terraform CI Validation – GitHub Actions](https://github.com/Chandresh007-accenture/Project7-terraform-ci-validation-Chandresh/actions)

## Project Deliverable

Successful GitHub Actions pipeline screenshot showing Terraform formatting and validation checks.

## Author

**Name:** Chandresh Kumar

