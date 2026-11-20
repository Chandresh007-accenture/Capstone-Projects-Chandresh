# Project 6 – Version Control Infrastructure

## Project Overview
This project demonstrates how to track Terraform configuration changes using Git and GitHub.

## Tools Used
- Terraform
- Git
- GitHub

## Project Structure
- `main.tf` – Defines the Terraform project metadata.
- `outputs.tf` – Displays project details.
- `.gitignore` – Excludes Terraform-generated files from Git.

## Terraform Configuration
This project uses Terraform's built-in `terraform_data` resource. No AWS resources or cloud infrastructure were created.

## Git Workflow
1. Created a Git repository.
2. Pushed the initial Terraform configuration to GitHub.
3. Created a feature branch.
4. Updated the Terraform configuration with additional metadata.
5. Committed and pushed the changes.
6. Created a Pull Request.
7. Merged the Pull Request into the main branch.

## Validation
The following commands completed successfully:

```bash
terraform fmt
terraform validate

## Author
**Name:** Chandresh Kumar  
**GitHub:** [Chandresh007-accenture](https://github.com/Chandresh007-accenture)
