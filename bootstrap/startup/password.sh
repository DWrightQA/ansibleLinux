echo *****************confluence.sh

sudo cp /vagrant/files/etc/.pass.txt /etc/
sudo chmod 600 /etc/.pass.txt
sudo chown ansibleadmin.ansibleadmin /etc/.pass.txt
