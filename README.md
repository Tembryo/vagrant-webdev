# Wisdota Webdev Environment 

This is intended to make the setup of a local development environment to work on the Wisdota webservice as straightforward as possible.

## Setup process

Make sure that `git`, `virtualbox` and `vagrant` are installed.

Create a base directory `Tembryo` to contain all git-versioned content.

    mkdir Tembryo
    cd Tembryo

Clone the necessary repositories into `Tembryo` with

    git clone https://github.com/Tembryo/vagrant-webdev.git
    git clone https://github.com/Tembryo/wisdota-shared-code.git
    git clone https://github.com/Tembryo/wisdota-nginx.git
    git clone https://github.com/Tembryo/wisdota-webserver.git

Switch to the `vagrant-webdev` directory and start the virtual machine with:

    cd vagrant-webdev
    vagrant up

Now the local webserver should be up and running, view it by opening the address `localhost:8080` in your browser.
The files being served are located in `.../Tembryo/wisdota-webserver/files`. 

Changes to the Node/Express server require a restart of the webserver (e.g. by restarting the whole VM).

Close the VM with

    vagrant halt

## More tips

Interesting commands are:

Redo the setup of the VM

    vagrant reload --provision

## Documentation

This uses the Ubuntu 14.04 box with installed Docker provided at `https://github.com/William-Yeh/docker-enabled-vagrant`

An alternative would be to use a default Ubuntu box, and install docker using the Docker provisioner included in Vagrant. Installation seems to be bugged/take 8min at the moment: https://github.com/mitchellh/vagrant/issues/7161