# Project 7 – CI Validation for Terraform

## Project Overview
This project demonstrates Continuous Integration (CI) for Terraform using GitHub Actions.

The workflow automatically checks Terraform formatting and validates the configuration when code is pushed or a Pull Request is created against the main branch.

## Tools Used
- Terraform
- Git
- GitHub
- GitHub Actions

## Project Structure
- `main.tf` – Terraform resource configuration.
- `outputs.tf` – Terraform outputs.
- `.gitignore` – Excludes Terraform-generated files.
- `.github/workflows/terraform-validation.yml` – GitHub Actions CI workflow.

## Automated Checks
1. Terraform format check (`terraform fmt -check -recursive`).
2. Terraform initialization (`terraform init -backend=false`).
3. Terraform validation (`terraform validate`).

## Infrastructure
This project uses Terraform's built-in `terraform_data` resource. No AWS infrastructure is deployed.

## Author
**Name:** Chandresh Kumar  
**GitHub:** [Chandresh007-accenture](https://github.com/Chandresh007-accenture)
