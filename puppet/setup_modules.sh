
gem install hiera-eyaml -v 2.0.8 --no-ri --no-rdoc
gem install deep_merge  -v 1.0.1 --no-ri --no-rdoc

puppet module install puppetlabs-stdlib
puppet module install nanliu-staging
puppet module install puppetlabs-concat
puppet module install puppetlabs-tomcat
puppet module install ccin2p3-etc_services
puppet module install mthibaut-users

# https://forge.puppet.com/deric/accounts
puppet module install deric-accounts

# Create Resources
# https://forge.puppet.com/tedivm/hieratic
puppet module install tedivm-hieratic
#https://forge.puppet.com/puppetlabs/firewall
puppet module install puppetlabs-firewall

puppet module install petems-swap_file
