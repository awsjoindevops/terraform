terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" # provider Version
      version = "5.31.0" # AWS provider version, not terrform version

    }
  }
}

provider "aws" {
   region     = "us-east-1"
}



