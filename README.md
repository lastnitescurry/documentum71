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

## References
###### Masterless Puppet
[NREL Packer Puppet](https://github.com/NREL/vagrant-boxes/blob/master/packer/scripts/puppet.sh)

[MASTERLESS PUPPET AND DECLARATIVE PROVISIONING](https://inside.mygov.scot/2015/11/24/masterless-puppet)

[Puppet 4.4 LINUX](https://docs.puppet.com/puppet/4.4/reference/install_linux.html)

[Masterless Puppet with Vagrant](http://terrarum.net/blog/masterless-puppet-with-vagrant.html)


##### Hiera
[Using Hiera with Puppet](http://pierrerambaud.com/blog/devops/using-hiera-with-puppet)

##### Hiera - Roles and Profiles
[Deploying nginx with Puppet](https://blog.serverdensity.com/deploying-nginx-with-puppet)

###### Puppet Modules
[Etc Services](https://forge.puppetlabs.com/ccin2p3/etc_services)

###### Other
[My Gov Scotland - Continuous Delivery](https://inside.mygov.scot/2015/11/04/how-we-approach-continuous-delivery/index.html)