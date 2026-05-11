# #TODO

# resource "local_file" "my_hosts_file" {
#   filename= "hosts"
#   content  = templatefile("${path.module}/templates/inventory.tpl", {
#     instances = { for name, instance in aws_instance.my_instance : name => {
#       public_ip = instance.public_ip
#       user      = var.instances[name].user
#       os_family = var.instances[name].os_family
#     }}
#     ssh_key_path ="C:/Users/great/OneDrive/Desktop/Tutedude/Ansible_Practice/terraform"
#   })

#    filename     = "${path.module}/../inventories/dev/hosts.ini"
#    file_permission =  "0644"

    