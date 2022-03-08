terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
  }


  required_version = ">= 1.0.5"
}

provider "aws" {
  region = var.aws_region
}


/*
resource "aws_s3_bucket" "data" {
  bucket_prefix = var.bucket_prefix

  force_destroy = true

  acl = "private"
}
*/


resource "aws_s3_bucket" "data" {
  bucket_prefix = var.bucket_prefix

  force_destroy = true
}
resource "aws_s3_bucket_acl" "data" {
  bucket = aws_s3_bucket.data.id
  acl    = "private"
}



data "aws_s3_objects" "data_bucket" {
  bucket = aws_s3_bucket.data.bucket
}

data "http" "local_ip" {
  url = "http://ipv4.icanhazip.com"
}