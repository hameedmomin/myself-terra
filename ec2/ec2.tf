resource "aws_spot_instance_request" "sample" {
  ami            = "ami-0d997c5f64a74852c"
  spot_price     = "0.03"
  instance_type  = "t2.micro"
  key_name       = "Name"

  tags = {
    Name  = "new"
  }
}

provider "aws" {
  region    = "us-east-1"
}
