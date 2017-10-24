#
# Get the aliases and functions
#

# source git prompt script
[ -r /etc/git-prompt.sh ] && . /etc/git-prompt.sh

prompt_short()
{
    pwd | sed -e s!.*/home/zhoujd!-!
}

# non-printable characters must be enclosed inside \[ and \]
PS1='\[\033[33m\]$(prompt_short) \[\033[36m\]$(__git_ps1 "%s")\[\033[0m\]
$ '

# set PS1 prompt for user@host
USERHOST='\[\033[32m\]\u@\h '
PS1=${USERHOST}${PS1}

# set window title
TITLEBAR='\[\033]0; $(prompt_short)\007\]'
PS1=${TITLEBAR}${PS1}

# emacs PS1 setting
if [ "$TERM" == "emacs" ]; then
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
alias lcsh='csh -l'
alias unix2dos='dos2unix --u2d'
alias dos2unix='dos2unix --d2u'
alias scp='pscp'

# source .bash_profile
if [ -f ${HOME}/.bashrc ] ; then
    . ${HOME}/.bashrc
fi
