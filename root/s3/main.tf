terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source         = "../../module/s3"
  bucket_name    = var.bucket_name
  versioning     = var.versioning
  force_destroy  = var.force_destroy
  tags           = var.tags
}
