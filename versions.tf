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
    tags = var.tags
  }
}
