# Project 12 – Infrastructure CI Trigger: Terraform Plan

## Overview

This project demonstrates how to automate Terraform checks and planning using GitHub Actions.

The workflow runs automatically when changes are pushed to the repository or when a pull request is created. It helps identify Terraform formatting and validation issues before infrastructure changes are applied.

## Project Structure

```text
Project-12-Infrastructure-CI-Trigger-Terraform-Plan/
│
├── .github/
│   └── workflows/
│       └── terraform-plan.yml
│
├── main.tf
└── README.md
```

## Tools and Technologies

- Terraform
- GitHub
- GitHub Actions
- YAML
- Infrastructure as Code (IaC)

## CI Workflow

The GitHub Actions workflow performs the following steps:

1. Checks out the repository.
2. Sets up Terraform.
3. Checks Terraform formatting.
4. Initializes Terraform.
5. Validates the Terraform configuration.
6. Generates a Terraform execution plan.
7. Uploads the Terraform plan as a workflow artifact.

## Verification

The workflow was tested through GitHub Actions.

The following checks completed successfully:

- Terraform Format
- Terraform Validate
- Terraform Plan
- Pull request workflow execution
- Push workflow execution

## GitHub Integration

The workflow was tested using a feature branch and a pull request into the `main` branch.

The pull request was successfully merged, and the feature branch was retained.

## Learning Outcomes

- Understanding Infrastructure as Code automation.
- Creating GitHub Actions workflows.
- Automating Terraform formatting and validation.
- Generating Terraform plans through CI.
- Integrating CI checks with pull requests.

## Author

Chandresh Kumar
