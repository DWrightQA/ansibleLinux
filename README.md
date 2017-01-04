# ansibleLinux

This is a vagrantfile that stands up 2 Centos7 VM's, one with an installation of the latest version of ansible. A hosts file and a set of simple roles are included. This is primarily intended to be a test platform for ansible roles.   


PREREQUISITES

1. PuttyGen latest
2. virtualbox manager latest
3. Vagrant latest
4. Git latest


STEPS:

1. open git and create a directory for the repo
2. Pull repo to directory
3. Run vagrant commands:
  1. vagrant plugin install vagrant-vbguest
4. Go to {{ home dir }}/.vagrant.d/boxes/centos-VAGRANTSLASH-7\{{ latest version }}\virtualbox\Vagrantfile and open it
5. Change shared folder line to
  1. config.vm.synced_folder ".", "/vagrant"
5. Run command ssh-keygen and create two keys of default names
6. copy these keys (id_rsa and id_rsa.pub) to {{ repo dir }}\files\user\ansibleadmin\ssh
7. Run PuttyGen and load the id_rsa key and save it in putty format
8. Set a defualt configutation for putty for the ansible box:
  1. Under Session/Netowrk IP - set to "192.168.80.20"
  2. Under Connection/SSH/Auth - search for the private key to key just generated
  3. Under Connection/Data - set Auto-login username to "ansibleadmin"
9. Set a defualt configutation for putty for the target box:
  1. Under Session/Netowrk IP - set to "192.168.80.21"
  2. Under Connection/SSH/Auth - search for the private key to key just generated
  3. Under Connection/Data - set Auto-login username to "ansibleadmin"
10. Run vagrant up on the root directory of the downloaded repo
11. Putty into the config box with the created session




NOTE*

The use of "vagrant halt" and "vagrant reload" will mean the VM's lose their static IP address.
To get around this always run the commands as:
  1. vagrant up --provision-with network
  2. OR vagrant reload --provision-with network

This will run a short script that resets the network and allows the VM's to assign their static IP's