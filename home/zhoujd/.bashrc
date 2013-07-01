# PS1 setting

if [ $TERM == emacs ]; then
  PS1='[\033[32m\]\u@\h \[\033[33m\w\033[0m\]]$ '
elif [ $TERM == xterm ]; then 
  PS1='[\033[32m\]\u@\h \[\033[33m\w\033[0m\]]$ '
else
  PS1='[\u@\h \w]\$ '
fi

alias ls='ls --show-control-chars --color=auto'
alias ll='ls -l'
export LS_COLORS='di=1'

