provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-06373f703eb245f45"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0d34286fb31571051"
  vpc_security_group_ids = ["sg-0cb08255a29bfca12"]

  tags = {
	Name = "terraform-example"
	}
}

