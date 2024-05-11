resource "aws_instance" "db" {

    ami = data.aws_ami.ami_id.id
    vpc_security_group_ids = ["sg-01cdc3c13e1ffe60c"]  # sg id (everything_allow)
    instance_type = "t3.micro"
    tags = {
        Name = "data-source-practice"
    }
}