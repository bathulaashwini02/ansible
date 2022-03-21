# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIA37VOISTADANJLP6Z"
  secret_key = "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"
}

# ec2 instence
  resource "aws_instance" "ec2" {
  ami       = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = "subnet-065b890abc7f1b76f"
  security_groups = ["sg-06d82ac6ce81fb6c4"]
  key-name = Linex8AM
  tags = {
  Name = "k8s workstation"
  }
}

