provider "aws" {
  region = var.region

}

provider "snowflake" {
  role     = "SYSADMIN"
  username = var.SNOWFLAKE_TRIAL_USER
  account  = var.SNOWFLAKE_TRIAL_ACCOUNT
  region   = var.SNOWFLAKE_TRIAL_REGION
  password = var.SNOWFLAKE_PASSWORD

}

terraform {
  required_version = "> 0.13.10"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.35.0"
    }
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.30"
    }
  }
  backend "s3" {
    bucket  = "snowflake-tech-talk-infra"
    key     = "file_formats/terraform.tfstate"
    region  = "sa-east-1"
    encrypt = true

  }
}
