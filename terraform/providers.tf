terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "terraform-aws-production-infrastructure"
      ManagedBy   = "Terraform"
      Environment = var.environment
      Owner       = "AI Cloud Labs"
    }
  }
}
