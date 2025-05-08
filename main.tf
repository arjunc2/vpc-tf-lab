provider "aws" {
    region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    bucket = "nagtfbackends3tfstate"
    key    = "path/to/my/key"
  }
}