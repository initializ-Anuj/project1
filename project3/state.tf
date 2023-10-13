terraform {
  backend "s3" {
    bucket         = "my-anuj-terraform-bucket"
    # Use the same bucket name from Step 1
    key            = "ec2/terraform.tfstate"
    # Specify a unique key for this state file
    region         = "us-east-1"
    # Use the same region as the bucket
    encrypt        = true
  }
}
