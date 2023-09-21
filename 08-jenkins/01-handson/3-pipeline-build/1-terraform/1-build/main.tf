provider "aws" {
    access_key = "xxxx"
    secret_key = "xxx"
    region = "us-west-2"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-03f65b8614a860c29"
    instance_type = "t2.micro"
    key_name     = "xxxxx"
}

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}