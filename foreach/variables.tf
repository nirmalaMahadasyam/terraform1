variable "instance_names" {
  type        = map
  default     = {
    db = "t3.small"
    backend = "t3.micro"
    frontend = "t3.micro"
  }
}

variable "common_tags" {
    type = map
    default = {
        Project = "Expense"
        Terraform = "true"
    }
}

#r53 variables
variable "zone_id" {
    default = "Z03763011XJRNCF5S8GAY"   # change u r hosted zone_id.(nirmaladevops.cloud)
}

variable "domain_name" {
    default = "frontend.nirmaladevops.cloud"  # u r domain name
}