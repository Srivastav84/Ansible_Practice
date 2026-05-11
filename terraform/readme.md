how to install ansible on a specific operating system

$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible

--------------

 1  sudo apt-add-repository ppa:ansible/ansible
    2  sudo apt update
    3  sudo apt install ansible

-m module
-a adhoc command
get ansible playbooks of shubham londhe

ansible-playbook show_date.yml -v
ansible worker-ubuntu -m setup |grep -i "os"