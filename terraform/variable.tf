# this is a simple variable of type map
 
variable "instances" {

    description = "Map of instncesnames to AMI IDs, SSh users, and OS family"

    type = map(object({
        ami = string
        user = string
        os_family = string
        instance_type = string
    }))

    # by default value to be put in the variable

    default = {
      "control-node-ubuntu" = {
      ami = "ami-0d76b909de1a0595d" # Ubuntu 24.04 LTS - update for your region
      user = "ubuntu"
      os_family = "ubuntu"
      instance_type = "t3.micro"
      }

      "worker-ubuntu" = {
      ami  = "ami-0d76b909de1a0595d" # Ubuntu 24.04 LTS - update for your region
      user = "ubuntu"
      os_family = "ubuntu"
      instance_type = "t3.micro"
      }

      "worker-redhat" = {
      ami  = "ami-04c7815cd1d6c8fa4" # RHEL 9 - update for your region
      user = "ec2-user"
      os_family = "redhat"
      instance_type = "t3.micro"
      }
    }
}


# variable "instance_type" {
#   description = "Instance type for the EC2 instance"
#   type        = string
#   default     = "t2.micro"

#   validation {
#     condition     = contains(["t2.micro", "t2.small", "t2.medium", "t3.micro", "t3.small", "t3.medium"], var.instance_type)
#     error_message = "Instance type must be one of: t2.micro, t2.small, t2.medium, t3.micro, t3.small, t3.medium."
#   }
# }

# variable "my_environment" {
#   description = "Deployment environment (dev, staging, prd)"
#   type        = string
#   default     = "dev"

#   validation {
#     condition     = contains(["dev", "staging", "prd"], var.my_environment)
#     error_message = "Environment must be one of: dev, staging, prd."
#   }
# }