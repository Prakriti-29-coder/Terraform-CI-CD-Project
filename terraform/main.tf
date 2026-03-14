provider "aws" {
  region = "us-east-2" 
}

resource "aws_instance" "ec2_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2023 AMI (example)
  instance_type = "t3.micro"
  iam_instance_profile = "ec2-adminaccess"
  tags = {
    Name = "Terraform-EC2"
  }
}
