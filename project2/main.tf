provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  # Replace with your desired CIDR block


  tags = {
    Name = "Automation-vpc"
    # Assign a descriptive name to your VPC
  }
}


resource "aws_subnet" "my_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  # Replace with your desired subnet CIDR block
  availability_zone       = "us-east-1a"
  # Replace with your desired availability zone
  map_public_ip_on_launch = true
}
