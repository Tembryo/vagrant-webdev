Vagrant.configure(2) do |config|

  config.vm.box = "williamyeh/ubuntu-trusty64-docker"

  config.vm.network "forwarded_port", guest: 80, host: 8080

   config.vm.synced_folder "..", "/tembryo"

  config.vm.provision "shell", path: "provision-vm.sh"

  config.vm.provision "shell", inline: "docker-compose -f /vagrant/compose-local_webserver-dev_backend.yml up -d",
    run: "always"
end
