terraform {
  backend "s3" {
    bucket = "tfbucket-rob"
    key = "./demo.tfstate"
    region = "us-west-2"
    dynamodb_table = "tf-state-locking"
  }
}

module "sleeper" {
    source = "../modules/sleeper"
}

