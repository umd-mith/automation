### MITH Ansible

This repository contains automated configuration management for the [Maryland Institute for Technology in the Humanities (MITH)](http://mith.umd.edu)

Caveat lector: We don't really know what we're doing yet

That said, to use:

* `mv hosts.example hosts` and supply IP address of target machine
* `mv ansible.cfg.example ansible.cfg` and supply path to ssh key
* supply passwords for wordpress db and mysql root in `group_vars/all`
* run `ansible-playbook -i hosts site.yml`