resource "aws_instance" "my-machine" {

  count = 4


  ami = var.ec2_ami
  instance_type = var.instance_type
  tags = {
   Name = "ec2-${count.index}"
  }
}


or 

resource "aws_instance" "example" {
    ami  = "ami-03eb6185d756497f8"  # Specify an appropriate AMI ID
    instance_type = "t2.micro"
    subnet_id = "subnet-02f912683905859bf"
    key_name = "sm"
}
