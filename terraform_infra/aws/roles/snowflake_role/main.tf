provider "aws" {
  region = var.region
}

terraform {
  required_version = "~> 0.14.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.59.0"
    }
  }
  backend "s3" {
    bucket  = "snowflake-tech-talk-infra"
    key     = "aws/roles/snowflake_access_role/terraform.tfstate"
    region  = "sa-east-1"
    encrypt = true

  }
}



