variable  "ami_id" {

type=string
    default="ami-0e1d06225679bc1c5"

}
   
variable "keyname" {

    default = "dockerdevops"
  
}

variable "instance_type" {
    type=string
    default="t2.micro"
 }

 variable "sandboxes" {

    type = list(string)
    default = [ "dev","prod","test","uat"]
   
 }