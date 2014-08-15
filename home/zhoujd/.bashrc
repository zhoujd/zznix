####.bashrc for zznix

# PS1 setting
if [ -z "$PS1" -o "$TERM" == "emacs" ]; then
    PS1='[\u@\h $(pwd | sed -e s!.*/zznix/*!/! | sed -e s!.*/home/zhoujd!~!)]$ '
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

# path add zzemacs/bin
if [ -d $HOME/zzemacs/bin ] ; then
    export PATH=$HOME/zzemacs/bin:$PATH
fi

# shell directory bookmark
if [ -f $HOME/zzemacs/misc/.bashrc ] ; then
    . $HOME/zzemacs/misc/.bashrc
fi
