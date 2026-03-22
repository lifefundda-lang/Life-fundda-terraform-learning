resource "aws_instance" "First-Terraform-Instance" {
  ami           = "ami-0c834c075b3201569"
  instance_type = "t3.micro"

  tags = {
    Name = "First-Terraform-Instance"
  }
  key_name               = aws_key_pair.Key-Pair.key_name
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  user_data              = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install nginx

             sudo echo "its lifehood from life_restart" >/var/www/html/index.nginx-debian.html"
              EOF


  provisioner "file" {
    source      = "${path.module}/file.txt"
    destination = "/tmp/file.txt"
  }
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("${path.module}/id_rsa")
    host = "${aws_instance.First-Terraform-Instance.public_ip}"
  }
}



resource "aws_key_pair" "Key-Pair" {
  key_name   = "developer-key"
  public_key = file("${path.module}/id_rsa.pub")
}

output "key-name" {
  value = aws_key_pair.Key-Pair.key_name
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic "

  dynamic "ingress" {
    for_each = [80, 443, 22, 3389, 3306, 5432, 6379, 27017]
    iterator = port
    content {
      description = "Allow inbound traffic"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
}
