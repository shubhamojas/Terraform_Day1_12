locals {
  bucket-name="${var.layer}-${var.env}-bucket-hydnaresh"
}

resource "aws_s3_bucket" "demo" {

    bucket = local.bucket-name
    tags = {
      name=local.bucket-name
      enviroment=var.env
      
    }
  
}