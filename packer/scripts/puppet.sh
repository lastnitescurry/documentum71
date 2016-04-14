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

yum -y install puppet facter ruby-shadow
