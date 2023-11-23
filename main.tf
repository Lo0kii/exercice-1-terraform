# main.tf

# Configure AWS Provider
provider "aws" {
  region = "us-west-3"
  access_key = "AKIA3ET4HPKOCEA2Y5EM"
  secret_key = "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"
}

# Define an AWS EC2 Instance
resource "aws_instance" "tst" {
  ami           = "ami-0302f42a44bf53a45"
  instance_type = "t2.micro"
}
