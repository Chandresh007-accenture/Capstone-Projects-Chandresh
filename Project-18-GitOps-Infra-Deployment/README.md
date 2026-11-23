# Project 18 – GitOps Infrastructure Deployment

## Goal
Trigger infrastructure updates from pull request merges.

## Tasks
1. Configure a Terraform Apply job in GitHub Actions.
2. Add an approval requirement before applying changes.

## Workflow
The GitHub Actions workflow performs the following steps:

1. Triggers when a pull request is merged into the `main` branch and Project 18 files have changed.
2. Checks Terraform formatting.
3. Initializes Terraform.
4. Validates the Terraform configuration.
5. Generates and uploads a Terraform plan.
6. Waits for approval through the GitHub `production` environment.
7. Downloads the saved plan and applies it.

## Files
- `main.tf` – Terraform demo configuration.
- `.github/workflows/gitops-deploy.yml` – GitHub Actions deployment workflow.
- `Screenshot/` – Folder for implementation evidence.

## Approval Setup
In GitHub:
1. Open the repository Settings.
2. Select Environments.
3. Create an environment named `production`.
4. Configure required reviewers if the repository supports this feature.

## Safety
This project uses Terraform's `terraform_data` resource as a demonstration. It does not create AWS infrastructure.
