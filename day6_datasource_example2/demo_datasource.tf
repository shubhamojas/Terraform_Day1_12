data "aws_vpc" "vpc" {
  id = vpc_id
}

data "aws_subnet" "subnet" {

    id=subnet_id
  
}

resource "aws_security_group" "sg" {
    name="sg"
    vpc_id = data.aws_vpc.vpc
    ingress = [

        {
            cidr_blocks = ["0.0.0.0/0"]
            description = ""
            from_port = 22
            protocol = "tcp"
            security_groups = []
            self = false
            to_port = 22
        }
    ]
    egress = [
        {
            cidr_blocks = [ "0.0.0.0/0" ]
            description = ""
            from_port = 0
            protocol = "-1"
            security_groups = []
            self = false
            to_port = 0
        }
    ]
  
}

resource "aws_instance" "dev" {
    ami = data.aws_ami.amzlinux.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.dev.id
    tags = {
    Name = "DataSource- Instance"
  }
  
}
