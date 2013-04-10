# PS1 setting

if [ $TERM == emacs ]; then
  PS1='[\033[32m\]\u@\h \[\033[33m\w\033[0m\]]$ '
  alias ls='ls --color'
  alias ll='ls -l'
elif [ $TERM == xterm ]; then 
  PS1='[\033[32m\]\u@\h \[\033[33m\w\033[0m\]]$ '
  alias ls='ls --color'
  alias ll='ls -l'
else
  PS1='[\u@\h \W]\$ '
  alias ll='ls -l'
fi

export LS_COLORS='di=1'

