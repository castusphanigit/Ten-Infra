terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket  = "ten-terraform-statefile"
    key     = "terraform/${var.env}/terraform.tfstate"
    region  = "ap-south-1"
    encrypt = true
    # dynamodb_table = "terraform-locks"  # Optional but good for locking
  }
}

provider "aws" {
  region = "ap-south-1"
}