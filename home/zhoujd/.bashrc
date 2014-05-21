# PS1 setting

if [ $TERM == emacs ]; then
    PS1='\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[0m\]$ '
elif [ $TERM == xterm ]; then
    PS1='\[\033[32m\]\u@\h \[\033[33m\]\w\[\033[0m\]$ '
else
    if [ -z "$PS1" ]; then
        PS1='\u@\h \w\$ '
    fi    
fi

##for chinese file name show
alias ls='ls --show-control-chars --color=always'
alias ll='ls -l'
alias dir='ls -C'
alias pwd='pwd -W'

export MAKE_MODE=unix
export LS_COLORS='di=1'

# set default options for 'less'
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh
