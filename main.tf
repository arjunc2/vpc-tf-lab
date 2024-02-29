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

# provider us-east-1 region
provider "aws" {
    region = "us-east-1"
}