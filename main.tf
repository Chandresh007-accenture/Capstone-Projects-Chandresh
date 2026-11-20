terraform {
  required_version = ">= 1.0"
}

resource "terraform_data" "project" {
  input = {
    project_name = "terraform-ci-validation-Chandresh"
    owner        = "Chandresh Kumar"
    purpose      = "Automated Terraform CI validation"
    environment  = "development"
  }
}
