#
# Get the aliases and functions
#

PS1='\[\033[32m$(pwd | sed -e 's!.*/home/zhoujd!-!')\033[36m $(__git_ps1 "%s")\033[0m\]
$ '

if [ -f ${HOME}/.bashrc ] ; then
    . ${HOME}/.bashrc
fi
