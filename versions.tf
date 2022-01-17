terraform {
  required_providers {
    aws = {
      version = ">= 3.72.0"
      source  = "hashicorp/aws"
    }
  }
}


provider "aws" {
  region = var.region
  default_tags {
    tags = {
      Owner   = "Joshua"
      Project = "aws_acm_certificate_joshuamkite.com"
      repo    = "git@github.com:joshuamkite/aws_acm_certificate_joshuamkite.com.git"
    }
  }
}
