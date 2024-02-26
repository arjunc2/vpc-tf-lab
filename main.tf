# This code is to create 1 VPC with 3 public subnets and 3 private subnets and launch 3 machines
# in each availability zone using multiple terraform functions
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

# terraform {
#   backend "s3" {
#     bucket = "nag43390147bucket"
#     key    = "nagdevops.tfstate"
#     region = "us-east-1"
#   }
# }