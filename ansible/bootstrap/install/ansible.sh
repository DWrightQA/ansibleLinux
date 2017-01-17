## Install dependancies and Ansible
#sudo yum -y update install
sudo easy_install pip
sudo pip install paramiko PyYAML Jinja2 httplib2 six
sudo pip install ansible

## Install sshpass
sudo yum install -y sshpass

## Install python windows remote desktop
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade virtualenv
sudo -H pip install xmltodict
sudo -H pip install pywinrm
sudo pip install --upgrade pywinrm --user python

## copy over ansible directories
sudo cp -a /vagrant/files/etc/ansible/. /etc/ansible/
