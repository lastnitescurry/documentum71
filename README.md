# documentum71

Configure documentum on a single server

## Puppet
###### Install Masterless Puppet
As root, execute:

    cd /vagrant/packer/scripts
    ./puppet.sh

###### Install Puppet Modules
As root, execute:

    cd /vagrant/puppet
    ./setup_modules.sh

###### Apply Configurations
As root, execute:

    cd /vagrant/puppet
    ./apply.sh

###### References
[NREL Packer Puppet](https://github.com/NREL/vagrant-boxes/blob/master/packer/scripts/puppet.sh)

[Scottish Gov](https://inside.mygov.scot/2015/11/24/masterless-puppet)

[Puppet 4.4 LINUX](https://docs.puppet.com/puppet/4.4/reference/install_linux.html)

