This is an [Ansible] playbook for setting up Wordpress. It includes a
setup for installing a local development instance of the MITH Wordpress
instance using Vagrant.

To get a local instance of the MITH website running you will need to:

0. install [Homebrew]
1. brew cask install virtualbox vagrant
2. brew install ansible
3. ansible-playbook mithpressdata.yml
3. vagrant up

Then visit http://localhost:8080 in your browser and you should see 
the MITH Website!

[Homebrew]: http://brew.sh/
[Vagrant]: https://www.vagrantup.com/
[Ansible]: http://www.ansible.com/
