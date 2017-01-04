# ansibleLinux

PREREQUISITES

1. Powershell version 3+
2. virtualbox manager latest
3. Vagrant latest
4. Git latest


STEPS:

1. Pull repo to directory
2. Run vagrant commands:
  1. vagrant plugin install vagrant-vbguest
3. Go to {{ home dir }}/.vagrant.d/boxes/centos-VAGRANTSLASH-7\{{ latest version }}\virtualbox\Vagrantfile and open it
4. Change shared folder line to
  1. config.vm.synced_folder ".", "/vagrant", type: "smb"
5. Run vagrant up on the root directory of the downloaded repo
