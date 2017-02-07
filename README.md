# documentum71

Documentum stack on a single server. Based on [dctm-vagrant-puppet](https://github.com/lastnitescurry/dctm-vagrant-puppet) project.

## Provisioned Application URLS

### Oracle 12C Client
+ Puts 12c client on, however needs a 12c db to point at somewhere


## Puppet
###### Install Masterless Puppet
As root, execute:

    setup.sh found in this module, note you might need to edit it to make it work with your set up

    Software insatll dir is emc standard, eg <SOFTWARE>/<VERSION>/FILE

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
