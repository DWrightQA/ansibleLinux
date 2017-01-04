ls
cd /etc/ansible/
ansible centos-all -m ping
cd ~/.ssh
ls
cat authorized_keys 
sudo cp /vagrant/authorized_keys ~/.ssh
ls -lsa
chmod 600 authorized_keys 
ls -lsa
exit
ls
sudo cp /vagrant/authorized_keys ~/.ssh
cd ~/.ssh
sudo chmod 600 authorized_keys 
exit
cd ~/.ssh
ls
cat authorized_keys 
ssh-keygen
ls
sudo rm authorized_keys 
sudo cp /vagrant/authorized_keys ~/.ssh
sudo chmod 600 authorized_keys 
exit
