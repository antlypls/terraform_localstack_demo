terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54.1"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  access_key = "test"
  secret_key = "test"
  region = "us-east-1"

  s3_use_path_style = true
  endpoints {
    s3  = "http://localstack:4566"
    sts = "http://localstack:4566"
  }
}
