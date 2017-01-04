# ansibleLinux

STEPS:

1. Install GIT
2. Install latest Vagrant
3. Pull repo to directory
4. Run vagrant commands:
  1. vagrant plugin install vagrant-sshfs
  2. vagrant plugin install vagrant-vbguest
5. Go to {{ home dir }}/.vagrant.d/boxes/centos-VAGRANTSLASH-7\{{ latest version }}\virtualbox\Vagrantfile and open it
6. Change shared folder line to 
  1. config.vm.synced_folder ".", "/vagrant", type: "sshfs"
7. Run vagrant up on the root directory of the downloaded repo
