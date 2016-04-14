# NREL vagrant-boxes
# http://yum.puppetlabs.com/el/6/dependencies/x86_64/
# Install Puppet

cat > /etc/yum.repos.d/puppetlabs.repo << EOM
[puppetlabs-dependencies]
name=puppetlabdsdependencies
baseurl=http://yum.puppetlabs.com/el/6/dependencies/x86_64
enabled=1
gpgcheck=0

[puppetlabs]
name=puppetlabs
baseurl=http://yum.puppetlabs.com/el/6/products/x86_64
enabled=1
gpgcheck=0
EOM

yum -y update
yum -y install puppet facter ruby-shadow

gem install hiera-eyaml -v 2.0.8
gem install deep_merge  -v 1.0.1

puppet module install puppetlabs-stdlib
puppet module install nanliu-staging
puppet module install puppetlabs-concat
puppet module install puppetlabs-tomcat
puppet module install ccin2p3-etc_services
