terraform {
  required_version = ">= 1.4.0"
}

resource "terraform_data" "ci_demo" {
  input = "Project 12 - Infrastructure CI Trigger (Terraform Plan)"
}
