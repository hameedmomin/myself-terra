resource "aws_spot_instance_request" "sample" {
  ami            = "ami-0d997c5f64a74852c"
  spot_price     = "0.03"
  instance_type  = "t2.micro"

  tags = {
    Name  = "new"
  }
}

provider "aws" {
  region    = "us-east-1"
}
resource "aws_ec2_tag" "sample" {
  key              = "Name"
  resource_id      = aws_spot_instance_request.sample.id
  value            = "New"
}
