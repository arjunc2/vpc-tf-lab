terraform {
  required_providers {
    aws = {
	  source = "hashicorp/aws"
	  }
	}
	backend "remote" {
    organization = "nag-tf-org"

    workspaces {
      name = "nag-tf-org-workspace"
    }
  }
}