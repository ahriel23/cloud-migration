terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.18.1"
    }
  }


# #   backend configuration

#   backend "s3" {
#     bucket = "cloud-migr-455076341644"
#     key    = "states/terraform.tfstate"
#     region = "us-east-1"
#     dynamodb_table = "my-db"
#     encrypt = true
#   }
 }

provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWT5FJ46GJXHCD6XL"
  secret_key = "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"
}
