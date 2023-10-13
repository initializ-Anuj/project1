provider "aws" {
  region = "us-east-1" 
  # Replace with your desired AWS region
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-anuj-terraform-bucket" 
  # Replace with your desired bucket name
}


terraform {
  backend "local" {} 
  # Store state locally
}

