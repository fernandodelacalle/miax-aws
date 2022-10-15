terraform {

  backend "s3" {
    bucket = "terraformstatemiax"
    key    = "terraform_miax_state"
    region = "eu-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}
