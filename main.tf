terraform {
  required_version = ">= 1.0"
}

resource "terraform_data" "project" {
  input = {
    project_name = "terraform-version-control-Chandresh"
    owner        = "Chandresh Kumar"
    environment  = "development"
  }
}
