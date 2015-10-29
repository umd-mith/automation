This is an Ansible playbook for setting up a stock WordPress instance.

The supplied Vagrantfile will create a virtual machine, configure
WordPress, and start it listening on http://localhost:8080/ 

If you are OS X you can use [Homebrew] to install everything you need
to use Vagrant:

1. brew cask install virtualbox vagrant
2. brew install ansible
3. vagrant up

To connect to your VM:

    vagrant ssh

[Homebrew]: http://brew.sh/