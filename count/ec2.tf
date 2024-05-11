
# resource <resource-type> <resource-name>
resource "aws_instance" "db" {
    #count = 3 # it creates same name db with 3 instances
    count = length(var.instance_names) # to get the length of the array
    ami = "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
    tags = {
        Name = var.instance_names[count.index] # it will loop array[n] times
    }
}

resource "aws_security_group" "allow_ssh1" {
    name = "allow_ssh1"
    description = "allowing SSH access"

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh1"
        CreatedBy = "nirmala"
    }
}
