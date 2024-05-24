provider "aws" {
  
}

resource "aws_s3_bucket" "example" {
    bucket = "mexamlebckurtt"
    
    }

resource "aws_instance" "example_instance" {
      ami = "ami-0cc9838aa7ab1dce7"
      instance_type = "t2.micro"
      depends_on = [ aws_s3_bucket.example ]
      
      tags={
        Name="example-instance"
      }
  
}


resource "aws_s3_bucket_versioning" "versioning-name" {

bucket = aws_s3_bucket.example.id
versioning_configuration {
  status = "Enabled"

}
}

