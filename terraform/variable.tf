# this is a simple variable of type map
 
variable "instances" {

    description = "Map of instnces names to AMI IDs, SSh users, and OS family"

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
