# preference: 1. cmd line passing arg. 
#2. .tfvars file to pass the variables..
# 3. default values(variables.tf)
# create the variable for image_id(AMI)
variable "image_id"{
    type = string     #optional    
    default = "ami-090252cbe067a9e58"  #optional
    description = "RHEL-9 AMI ID"  #optional
}

# create the variable for instancetype
variable "instance_type"{
default = "t3.micro"
type= string
}

# for tags are in map
variable "tags"{
    default = {
        project = "Expense"
        environment = "dev"
        module ="db"
        name = "db"
    }

}

# security group
variable "sg_name"{
    default = "allow_ssh1"


}
variable "sg_description"{
    default = "allowing port 22"
}
variable "port"{
    default = "22"
}
variable "protocol"{
    default = "tcp"
}
variable "cidr_blocks"{
    type = list(string)
    default = ["0.0.0.0/0"]
}