terraform {

  required_providers {
    aws = "4.44.0"
  }

  backend "s3" {
    encrypt        = true
    //key            = "env://stage/lawly-serverless-api.tfstate"
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  
  region = var.region
}