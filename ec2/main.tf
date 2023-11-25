# Pull information from vpc workspace

data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "inna1622"
    workspaces = {
      name = "vpc"
    }
  }
}

data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "inna1622"
    workspaces = {
      name = "rds"
    }
  }
}