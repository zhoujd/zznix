####.bashrc for zznix

# set ls folder color
export MAKE_MODE=unix

# set default options for 'less'
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# set git && hg editor
#export GIT_EDITOR="nano"
#export HGEDITOR="nano"
#export GIT_SSH="/share/putty/TortoisePlink -ssh"
#export GIT_SSH="/bin/ssh"

# set DISPLAY environment
export DISPLAY=localhost:0.0

# add path for mini setup
if [ -f $HOME/.bash_addpath ] ; then
    . $HOME/.bash_addpath
fi

# self bash-setting from zzemacs
if [ -f $HOME/zzemacs/etc/profile ] ; then
    . $HOME/zzemacs/etc/profile
fi 

# source .bash_profile
if [ -f ${HOME}/.bash_profile ] ; then
    . ${HOME}/.bash_profile
fi
