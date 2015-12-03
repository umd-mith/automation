This is an [Ansible] playbook for setting up Wordpress. It includes a
setup for installing a local development instance of the MITH Wordpress
instance using Vagrant.

To get a local instance of the MITH website running you will need to:

0. get copy of MITH's Ansible vault password from a friend and put it in your
home directory as .mithansible
0. install [Homebrew]
0. `brew cask install virtualbox vagrant`
0. `brew install ansible`
0. `ansible-playbook mithpressdata.yml`
0. `vagrant up`

Then visit http://localhost:8080 in your browser and you should see 
the MITH Website!

[Homebrew]: http://brew.sh/
[Vagrant]: https://www.vagrantup.com/
[Ansible]: http://www.ansible.com/
