####.bashrc for zznix

# source .bash_profile
if [ -f ${HOME}/.bash_profile ] ; then
    . ${HOME}/.bash_profile
fi

# for chinese file name show
alias ls='ls --show-control-chars --color=always'
alias ll='ls -alF'
alias l='ls -CF'
alias dir='ls -C'        # only on win7
alias pwd='pwd -W'       # only on win7
alias cls='clear'        # only on win7
alias nano='nano -w'
alias more='less'
alias lcsh='csh -l'

# set ls folder color
export MAKE_MODE=unix

# set default options for 'less'
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# set git && hg editor
export GIT_EDITOR="nano"
export HGEDITOR="nano"

# git ssh tool select
#export GIT_SSH="/share/putty/TortoisePlink -ssh"
#export GIT_SSH="/bin/ssh"

# self bash-setting from zzemacs
if [ -d $HOME/zzemacs ] ; then
    export PATH=$HOME/zzemacs/bin:$HOME/zzemacs/libexec:$PATH
    for i in $HOME/zzemacs/etc/profile.d/*.sh ; do
        if [ -r "$i" ]; then
            if [ "${-#*i}" != "$-" ]; then
                . "$i"
            else
                . "$i" >/dev/null 2>&1
            fi
        fi
    done
fi
