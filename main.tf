terraform {
  required_providers {
    aws = {
	  source = "hashicorp/aws"
	  }
	}
	backend "remote" {
    organization = "nag-tf-org-1"

    workspaces {
      name = "nag-tf-org-workspace-1"
    }
  }
}

# provider us-east-1 region
provider "aws" {
    region = "${var.aws_region}"
}