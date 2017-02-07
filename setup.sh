yum --assumeyes install git iptables

yum --assumeyes install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker

git config --global user.name "asdf"
git config --global user.email "sad@cas.com"
git config --global core.autocrlf input
git config --global color.ui auto
git config --global color.branch auto
git config --global color.status auto
git config --global color.diff.meta "blue black bold"

#download modules for dev
cd /
git clone https://github.com/garethmcmillan/documentum73.git vagrant

#etc services
mkdir -p /vagrant/puppet/modules
cd /vagrant/puppet/modules
git clone https://github.com/lastnitescurry/puppet-etc_services.git etc_services
cd /vagrant/puppet/modules/etc_services
git checkout master

#oracle
mkdir -p /vagrant/puppet/modules
cd /vagrant/puppet/modules
git clone https://github.com/garethmcmillan/oracle.git
cd /vagrant/puppet/modules/oracle
git checkout master

#Documentum
mkdir -p /vagrant/puppet/modules
cd /vagrant/puppet/modules
git clone https://github.com/garethmcmillan/documentum.git
cd /vagrant/puppet/modules/documentum
git checkout master

#ApplicationServer
mkdir -p /vagrant/puppet/modules
cd /vagrant/puppet/modules
git clone https://github.com/lastnitescurry/applicationserver.git
cd /vagrant/puppet/modules/applicationserver
git checkout master


#now stuff from the checkout
cd /vagrant/packer/scripts
chmod u+x *.sh
./puppet.sh

cd /vagrant/puppet
chmod u+x *.sh
./setup_modules.sh
