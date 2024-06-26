resource "aws_instance" "dependency" { 
    ami = "ami-" 
    instance_type = "t2.micro" 
    key_name = "jenkin" 
    tags = { 
      Name="dependency" 
    } 
   
} 
 
resource "aws_s3_bucket" "dependency" { 
    bucket = "dependecny-s3-practice" 
    depends_on = [ aws_instance.dependency] 
   
}