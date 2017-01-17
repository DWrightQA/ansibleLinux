echo *****************adduser.sh


sudo adduser ansibleadmin
echo 'Demouser#123' | sudo passwd --stdin ansibleadmin
sudo cp -R /vagrant/files/user/ansibleadmin/sudoers/ansibleadmin /etc/sudoers.d

sudo mkdir /home/ansibleadmin/.ssh
sudo chown -R ansibleadmin /home/ansibleadmin/.ssh
sudo chgrp -R ansibleadmin /home/ansibleadmin/.ssh
sudo cp /vagrant/files/user/ansibleadmin/ssh/config /home/ansibleadmin/.ssh/
sudo chmod -R 700 /home/ansibleadmin/.ssh
