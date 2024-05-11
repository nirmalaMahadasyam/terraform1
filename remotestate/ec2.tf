resource "aws_instance" "db" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-01cdc3c13e1ffe60c"]  # sg id (everything_allow)
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}