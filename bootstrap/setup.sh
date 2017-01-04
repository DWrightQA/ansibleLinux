sudo yum update -y install
sudo yum install -y net-tools
sudo yum install -y epel-release
sudo yum install -y python-setuptools
sudo yum install -y gcc
sudo yum install -y python-devel
sudo yum install -y python-lxml
sudo yum install -y openssl-devel

sudo mv /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo cp /vagrant/files/etc/ssh/sshd_config /etc/ssh/
sudo chown root /etc/ssh/sshd_config
sudo chgrp root /etc/ssh/sshd_config
sudo chmod 600 /etc/ssh/sshd_config

sudo systemctl restart  sshd.service