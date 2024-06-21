resource "aws_instance" "dev" {
 ami = var.ami_id
instance_type = var.instance_type
key_name = var.keyname 
#count = 2
count=length(var.sandboxes)

tags = {
    #Name="today"
    #Name="test-${count.index}"
    Name=var.sandboxes$[count.index]
}
}