resource "aws_instance" "ec2_instance" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0fefe8e6c17c7c47c"]
    tags         = {Name = "HTTP_SERVER"}
    key_name     = "master_key"
}
