terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 4.0"
        }
      }
    backend "s3" {
      bucket = "verzel-tfstate"
      key    = "backstage/infra-as-a-code/buckets/tfstate"
      region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "S3Bucket" {
  bucket = var.bucket_name
}