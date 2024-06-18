resource "aws_instance" "userdata" {

    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "dockerdevops"
    user_data = file("test.sh")

    tags = {
        Name="userdata-tf"
    }

}