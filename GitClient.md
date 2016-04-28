# Git Client on RHEL 

Install git client and configure

## Install 
###### Latest available in repos
As root, execute:

    yum --assumeyes install git

##### Build from sources to get latest and greatest

[StackOverflow - latest git on Centos](http://stackoverflow.com/questions/21820715/how-to-install-latest-version-of-git-on-centos-6-x-7-x)

    yum --assumeyes install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker
    export GIT_VERSION=2.8.0
    mkdir -p /root/git
    cd /root/git
    wget "https://www.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz"
    tar xzf "git-${GIT_VERSION}.tar.gz"
    cd git-${GIT_VERSION}
    make prefix=/usr/local all
    make prefix=/usr/local install
    yum remove -y git
    git --version # should be GIT_VERSION

## Configure 
As root, execute:

    git config --global user.name "asdf"
    git config --global user.email "sad@cas.com"
    git config --global core.autocrlf input
    git config --global color.ui auto
    git config --global color.branch auto
    git config --global color.status auto
    git config --global color.diff.meta "blue black bold"
    
FIXME:

    cd /etc/bash_completion.d
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh 
    source /etc/bash_completion.d/git-completion.bash
    source /etc/bash_completion.d/git-prompt.sh

## Download Modules for development
##### On Cloud Image
As root, execute:

    cd /
    git clone https://github.com/lastnitescurry/documentum71.git vagrant

##### ETC Services
As root, execute:

    mkdir -p /vagrant/puppet/modules
    cd /vagrant/puppet/modules
    git clone https://github.com/lastnitescurry/puppet-etc_services.git etc_services
    cd /vagrant/puppet/modules/etc_services
    git checkout develop

##### Oracle XE
As root, execute:

    mkdir -p /vagrant/puppet/modules
    cd /vagrant/puppet/modules
    git clone https://github.com/lastnitescurry/oracle.git
    cd /vagrant/puppet/modules/oracle
    git checkout develop



## References
###### Git Client
[GIT tips and tricks](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)

[Customizing-Git-Git-Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)    

[Stack Exchange how-to-colorize-output-of-git](http://unix.stackexchange.com/questions/44266/how-to-colorize-output-of-git)
[RHEL git](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Developer_Guide/collaboration.git.html)

[Stack Overflow - Git Clone to specific folder](http://stackoverflow.com/questions/651038/how-do-you-clone-a-git-repository-into-a-specific-folder)