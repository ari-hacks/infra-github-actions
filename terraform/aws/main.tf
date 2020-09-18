# provider "aws" {
#     region = "us-east-1"
# }

# resource "aws_instance" "web_instance" {
#     ami = "ami-0c94855ba95c71c99"
#     instance_type = "t2.micro"
#     key_name = "tf-key"
# }

# resource "null_resource" "connect_web_instance" {
#   depends_on = [aws_instance.web_instance]
  
#   connection {
#       type        = "ssh"
#       user        = "ubuntu"
#       port        = 22
#       private_key = file(var.ssh_key_private)
#       host        = aws_instance.web_instance.public_ip
#       timeout     = "1m"
#       agent       = false 
#     }

#     provisioner "remote-exec" {
#         inline = [
#             "sudo yum install -y docker",
#             "sudo service docker start",
#             "sudo docker pull nginx",
#             "sudo docker run --name mynginx -p 80:80 -d nginx"
#         ]
#     }
# }