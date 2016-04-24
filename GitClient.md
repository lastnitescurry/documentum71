# Git Client on RHEL 

Install git client and configure

## References
###### Install 
As root, execute:

    yum --assumeyes install git
    
    
    git config --global user.name "Brian Dinneen"
    git config --global user.email "Brian.Dinneen@gmail.com"
    
###### Configure 
As root, execute:

    git config --global core.autocrlf input
    git config --global color.ui auto
    git config --global color.branch auto
    git config --global color.status auto

    git config --global color.diff.meta "blue black bold"
    
    cd /etc/bash_completion.d
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
    wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh 
    
    source /etc/bash_completion.d/git-completion.bash
    source /etc/bash_completion.d/git-prompt.sh

## References
###### Git Client
[GIT tips and tricks](https://git-scm.com/book/en/v1/Git-Basics-Tips-and-Tricks)

[Customizing-Git-Git-Configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)    

[Stack Exchange how-to-colorize-output-of-git](http://unix.stackexchange.com/questions/44266/how-to-colorize-output-of-git)
[RHEL git](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Developer_Guide/collaboration.git.html)
