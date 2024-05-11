resource "aws_instance" "db" {

    ami = local.ami_id  # same as variables...var.tags .....local.tags(locals and variables are same refering key,value pairs.)
    vpc_security_group_ids = [local.sg_id]
    instance_type = local.instance_type
    tags = local.tags
}