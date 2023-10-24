resource "aws_security_group" "sm" {
  name   = "sm"
}


resource "aws_instance" "my-machine" {

  count = 2


  ami = var.ec2_ami
  instance_type = var.instance_type
  subnet_id = "subnet-02f912683905859bf"
  key_name = "sm"

  tags = {
   Name = "ec2-${count.index}"
  }
security_groups = [
    aws_security_group.existing_security_group.name
]
}


