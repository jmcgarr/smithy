# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
config.vm.box = "lucid32"
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.forward_port 8080, 8080
  config.vm.forward_port 8081, 8081
  config.vm.forward_port 8082, 8082
  config.vm.forward_port 8085, 8085
  config.vm.forward_port 8443, 8443
  config.vm.forward_port 9000, 9000
  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "."
    puppet.manifest_file  = "init.pp"
  puppet.options = "--verbose --debug"
  end
end
