provider "aws" {
  region = "us-east-2"  
}

resource "aws_lightsail_instance" "instance" {
  count             = 3
  name              = "instance_${count.index + 1}"
  bundle_id         = "small_3_0"
  blueprint_id      = "windows_server_2022"  
  availability_zone = "us-east-2a"
}