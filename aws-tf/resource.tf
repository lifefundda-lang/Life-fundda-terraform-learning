resource "aws_instance" "First-Terraform-Instance" {
  ami           = "ami-0c834c075b3201569"
  instance_type = "t3.micro"

  tags = {
    Name = "First-Terraform-Instance"
  }
}