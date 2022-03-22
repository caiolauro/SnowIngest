terraform {
  required_version = "> 0.13.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.59.0"
    }
  }
}

provider "aws" {
  region = var.region
}

