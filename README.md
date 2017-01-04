# ansibleLinux

PREREQUISITES

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
6. Run vagrant up on the root directory of the downloaded repo
