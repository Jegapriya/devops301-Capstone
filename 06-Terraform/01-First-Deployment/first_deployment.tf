# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  #access_key = $AWS_ACCESS_KEY_ID
  #secret_key = $AWS_SECRET_ACCESS_KEY
}

resource "aws_instance" "web" {
  ami           = "ami-0d563aeddd4be7fff"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTFNode"
  }
}
