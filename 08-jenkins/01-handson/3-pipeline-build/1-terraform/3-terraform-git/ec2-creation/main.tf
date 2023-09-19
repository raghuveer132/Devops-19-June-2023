resource "aws_instance" "ec2_instance" {
    ami = "ami-052c08d70def0ac62"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-0fefe8e6c17c7c47c"]
    tags         = {Name = "HTTP_SERVER"}
    key_name     = "master_key"
    count        = 1

provisioner "remote-exec" {
   inline = ["sudo yum install httpd -y", "sudo service httpd start", "mkdir -p /tmp/devops", "sudo chmod 777 /var/www/html/"]
}

provisioner "file" {
 source = "mywebsite.html"
 destination = "/var/www/html/mywebsite.html"
}

connection {
  host = self.public_ip
  user = "ec2-user"
  private_key = file("/vagrant/keys/master_key.pem")    
  }
}
