# documentum71

Documentum stack on a single server. Based on [dctm-vagrant-puppet](https://github.com/lastnitescurry/dctm-vagrant-puppet) project. 

Now its time to 
+ move hard coded values out of modules and into hiera
+ break the blob of modules into some reusable chunks


## Provisioned Application URLS

### Oracle XE Server
+ [Oracle XE](http://127.0.0.1:8080/apex/f?p=4950:1)


## Puppet
###### Install Masterless Puppet
As root, execute:

    cd /vagrant/packer/scripts
    chmod u+x *.sh
    ./puppet.sh

###### Install Puppet Modules
As root, execute:

    cd /vagrant/puppet
    chmod u+x *.sh
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