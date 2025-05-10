aws_region    = "us-east-1"
vpc_cidr      = "10.10.0.0/16"
vpc_name      = "nag-devops-vpc"
public_cidrs  = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
private_cidrs = ["10.10.10.0/24", "10.10.20.0/24", "10.10.30.0/24"]
azs           = ["us-east-1a", "us-east-1b", "us-east-1c"]