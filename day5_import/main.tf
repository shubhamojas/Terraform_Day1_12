provider "aws" {
 
}

resource "aws_instance" "my_instance" {
  ami = "ami-0cc9838aa7ab1dce7"
  instance_type = "t2.micro"
  tags = {
    Name="my_instance_new"
  }
}

#terraform import aws_instance.my_instance i-0c80a2fbea94807f8