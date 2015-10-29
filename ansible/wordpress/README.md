This is an [Ansible] playbook for setting up a stock WordPress instance.

If you are setting up a dev instance on OS X you can use [Vagrant] to 
create a VM and install WordPress there. To get [Vagrant] running you can
use [Homebrew] to install everything you need:

1. brew cask install virtualbox vagrant
2. brew install ansible
3. vagrant up

Then visit http://localhost:8080 in your browser. If you want to ssh to your
VM just run: 

    vagrant ssh

[Homebrew]: http://brew.sh/
[Vagrant]: https://www.vagrantup.com/
[Ansible]: http://www.ansible.com/
