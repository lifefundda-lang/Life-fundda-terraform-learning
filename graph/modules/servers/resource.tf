resource "aws_instance" "First-Terraform-Instance" {
  ami           = "ami-0c834c075b3201569"
  instance_type = "t3.small"

  tags = {
    Name = "First-Terraform-Instance"
#   }
#   key_name               = aws_key_pair.Key-Pair.key_name
#   vpc_security_group_ids = [aws_security_group.allow_tls.id]
 

}
}