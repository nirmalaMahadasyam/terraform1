
resource "aws_instance" "db" {  
   ami =var.image_id                
  
   # leftside --- arguments, rightside---- values
   instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
   

    
}

