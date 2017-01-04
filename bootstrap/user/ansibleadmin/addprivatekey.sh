echo *****************addprivatekey.sh
# changing ssh ownership to ansibleadmin
sudo cp /vagrant/files/user/ansibleadmin/ssh/id_rsa /home/ansibleadmin/.ssh
sudo chown ansibleadmin /home/ansibleadmin/.ssh/id_rsa
sudo chgrp ansibleadmin /home/ansibleadmin/.ssh/id_rsa
sudo chmod 600 /home/ansibleadmin/.ssh/id_rsa
