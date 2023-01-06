terraform {
  backend "s3" {
    bucket = "tfbucket-rob"
    key = "./terraform.tfstate"
    region = "us-west-2"
    dynamodb_table = "tf-state-locking"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region     = "us-west-2"
  access_key = file("./aws_access_key.txt")
  secret_key = file("./aws_secret_key.txt")
}

