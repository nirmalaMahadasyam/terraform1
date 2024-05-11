locals {

  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-01cdc3c13e1ffe60c" # replace with my Securitygroup ID(everything_allow)
  #instance_type = "t3.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro" # expression or condition we can give.
  tags = {
    Name = "locals"
  }
}