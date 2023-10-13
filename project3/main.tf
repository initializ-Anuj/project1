provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "my_instance" {
  ami           = "ami-067d1e60475437da2"
  # Replace with your desired AMI ID
  instance_type = "t2.micro"
  # Replace with your desired instance type
  tags = {
    Name = "Automation-instance"
  }
}
