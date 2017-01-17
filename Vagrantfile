Vagrant.configure("2") do |config|


  config.vm.provider "virtualbox" do |vb|
   vb.gui = false
   vb.memory = 2000
   vb.cpus = 1
   vb.linked_clone = true
  end

  # config.ssh.insert_key = true
  # config.ssh.forward_agent = true


  # config.vm.define "winserver" do |node|
  #   node.vm.box = "winserver_ad"
  #   node.vm.network "private_network", ip: "192.168.80.13"
  #   node.vm.guest = :windows
  #   node.vm.communicator = "winrm"
  #   node.vm.boot_timeout = 600
  #   node.vm.graceful_halt_timeout = 600
  #   node.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", autocorrect: true
  #   node.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true
  #   node.vm.provision :shell, path: "bootstrap/windows/winrm.ps1", :run => 'always'
  # end

  config.vm.define "config-mgmt" do |node|
    node.vm.box = "centos/7"
    node.vm.hostname = "config-mgmt"
    node.vm.provision :shell, path: "bootstrap/setup.sh"
    node.vm.provision :shell, path: "bootstrap/user/ansibleadmin/adduser.sh"
    node.vm.provision :shell, path: "bootstrap/user/ansibleadmin/addprivatekey.sh"
    node.vm.provision :shell, path: "bootstrap/user/ansibleadmin/addpublickey.sh"
    node.vm.provision :shell, path: "bootstrap/install/ansible.sh"
    node.vm.provision :shell, path: "bootstrap/startup/password.sh"
    node.vm.provision :shell, path: "bootstrap/resetnetwork.sh", :run => 'always'
    node.vm.network "private_network", ip: "192.168.80.20"
  end

  config.vm.define "target" do |node|
    node.vm.box = "centos/7"
    node.vm.hostname = "target1"
    node.vm.provision :shell, path: "bootstrap/setup.sh"
    node.vm.provision :shell, path: "bootstrap/user/ansibleadmin/adduser.sh"
    node.vm.provision :shell, path: "bootstrap/user/ansibleadmin/addpublickey.sh"
    node.vm.provision :shell, path: "bootstrap/install/mailhog.sh"
    node.vm.provision :shell, path: "bootstrap/resetnetwork.sh", :run => 'always'
    node.vm.network "private_network", ip: "192.168.80.21"
  end

end
