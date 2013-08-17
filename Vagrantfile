# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-precise64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/precise/current/precise-server-cloudimg-vagrant-amd64-disk1.box"
  config.vm.hostname = 'adaptivelab'
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 8000, host: 8001
  config.vm.network :forwarded_port, guest: 6543, host: 6543
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.synced_folder "../../adaptivelab", "/vagrant", nfs: true
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "ansible/vagrant.yml"
    ansible.inventory_file = "ansible/hosts"
    ansible.verbose = false
  end
end
