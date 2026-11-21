variable "environment" {
  default = "dev"
}

variable "project" {
  default = "roboshop"
}

variable "ami_id" {
  type        = string
  default     = "ami-0055977a6e828a4f4"
  description = "AMI ID of the instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type of the instance"

  validation {
    condition = contains(
      ["t3.micro", "t3.small", "t3.medium", "t3.large"],
      var.instance_type
    )

    error_message = "Instance type must be one of t3.micro, t3.small, t3.medium or t3.large."
  }
}

variable "instances" {
  type    = list(string)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue"]
}



variable "zone_id" {
    default = "Z09258903GSH6PH8RY6XB"
}

variable "domain_name" {
    default = "devopslab.shop"
}




# variable "ec2_tags" {
#   type        = map
#   default     = {
#       Name = "roboshop-mongodb"
#       Environment = "dev"
#       Terraform = "true"
#       component = "mongodb"
#       Project = "roboshop"
#   }
# }





# variable "cidr" {
#   type = list
#   default = ["0.0.0.0/0"]
# }

# variable "from_port" {
#   type = number
#   default = 0
# }