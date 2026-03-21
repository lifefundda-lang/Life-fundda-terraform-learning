resource "aws_instance" "First-Terraform-Instance" {
  ami           = "ami-0c834c075b3201569"
  instance_type = "t3.micro"

  tags = {
    Name = "First-Terraform-Instance"
  }
  key_name = aws_key_pair.Key-Pair.key_name
}



resource "aws_key_pair" "Key-Pair" {
  key_name   = "developer-key"
  public_key = file("${path.module}/id_rsa.pub")
}

output "key-name" {
  value = aws_key_pair.Key-Pair.key_name
}