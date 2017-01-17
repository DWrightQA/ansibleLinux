echo *****************addpublickey.sh

sudo cp /vagrant/files/user/ansibleadmin/ssh/id_rsa.pub /home/ansibleadmin/.ssh/
sudo cp /vagrant/files/user/ansibleadmin/ssh/id_rsa.pub /home/ansibleadmin/.ssh/authorized_keys
sudo chown ansibleadmin /home/ansibleadmin/.ssh/authorized_keys
sudo chgrp ansibleadmin /home/ansibleadmin/.ssh/authorized_keys
