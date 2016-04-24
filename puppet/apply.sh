# Lifted from Vagrantfile
# https://inside.mygov.scot/2015/11/24/masterless-puppet/
# Configure Puppet to use Hiera

mkdir -p /etc/puppet/keys
ln -sf hiera/hiera.yaml /etc/hiera.yaml

rm -rf /var/lib/hiera
ln -snf hiera /var/lib/hiera

#export FACTER_machine_env=#{server["env"]}
#export FACTER_machine_role=#{server["role"]}
puppet apply --modulepath=modules:/etc/puppet/modules --hiera_config=hiera/hiera.yaml manifests/site.pp
