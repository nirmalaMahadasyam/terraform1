# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

   # ami = "ami-090252cbe067a9e58" 
   ami =var.image_id                 # refer this value from variables.tf file 
   
   vpc_security_group_ids = [aws_security_group.allow_ssh1.id]
   # leftside --- arguments(input), rightside---- values(output)
   instance_type = var.instance_type

    # tags = {
    #     Name = "db"
    # }
    tags = var.tags
}

resource "aws_security_group" "allow_ssh1" {
    # name = "allow_ssh"
    name = var.sg_name
    description = var.sg_description
    #description = "allowing SSH access"
    # this is block
    ingress {
        # from_port        = 22
        # to_port          = 22
        # protocol         = "tcp"
        # cidr_blocks      = ["0.0.0.0/0"]

        from_port = var.port
        to_port = var.port
        protocol = var.protocol
        cidr_blocks = var.cidr_blocks
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        #cidr_blocks      = ["0.0.0.0/0"]
        cidr_blocks      = var.cidr_blocks
    }

    tags = {
        Name = "allow_ssh1"
        CreatedBy = "nirmala"
    }
}