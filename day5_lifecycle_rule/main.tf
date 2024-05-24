provider "aws" {
  
}

resource "aws_s3_bucket" "example" {
    bucket = "mexamlebckurtt"
    #acl="private" 

    lifecycle {
    #create_before_destroy=true #this attribute will create the new object first and then destroy the old one
    #prevent_destroy = true
    #ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
    }
}

resource "aws_s3_bucket_versioning" "versioning-name" {

bucket = aws_s3_bucket.example.id
versioning_configuration {
  status = "Enabled"

}
}

