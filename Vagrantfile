# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
config.vm.box = "lucid32"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.forward_port 8080, 8080
  config.vm.forward_port 8081, 8081
  config.vm.forward_port 8082, 8082
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
  puppet.module_path = "modules"
    puppet.manifest_file  = "init.pp"
  puppet.options = "--verbose --debug"
  end
end
