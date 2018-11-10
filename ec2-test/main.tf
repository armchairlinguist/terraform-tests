provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "${var.ami}"
  instance_type = "t2.micro"

  ebs_block_device = [
    {
      device_name           = "/dev/sdb"
      encrypted             = true
    },
    {
      device_name           = "/dev/sdc"
      encrypted             = false
    }
  ]
}
