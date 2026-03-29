# resource "aws_instance" "First-Terraform-Instance" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = var.instance_type

#   tags = {
#     Name = "First-Terraform-Instance"
# #   }
# #   key_name               = aws_key_pair.Key-Pair.key_name
# #   vpc_security_group_ids = [aws_security_group.allow_tls.id]
 

# }

# }
module "web" {
  source = "./modules/servers"
  
}
# resource "aws_key_pair" "Key-Pair" {
#   key_name   = "developer-key"
#   public_key = file("${path.module}/id_rsa.pub")
# }

# output "key-name" {
#   value = aws_key_pair.Key-Pair.key_name
# }

# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic "

#   dynamic "ingress" {
#     for_each = [80, 443, 22, 3389, 3306, 5432, 6379, 27017]
#     iterator = port
#     content {
#       description = "Allow inbound traffic"
#       from_port   = port.value
#       to_port     = port.value
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]

#   }
# }
