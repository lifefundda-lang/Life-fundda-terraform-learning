data "aws_ami" "ubuntu" {
  most_recent      = true
  owners           = ["378050919872"]

  filter {
    name   = "name"
    values = ["first-ami"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
output "ami_id" {
  value = data.aws_ami.ubuntu.id
}