# prompt short
prompt_short()
{
    pwd | sed -e s!.*/home/zach!~!
}

# non-printable characters must be enclosed inside \[ and \]
PS1='\[\033[33m\]\W \[\033[0m\]$ '

# set PS1 prompt for user@host
USERHOST='\[\033[32m\]\u@\h '
PS1=${USERHOST}${PS1}

# set window title
TITLEBAR='\[\033]0; $(prompt_short)\007\]'
PS1=${TITLEBAR}${PS1}

# emacs PS1 setting
if [ "$TERM" == "emacs" ]; then
    PS1='[\u@\h $(pwd | sed -e s!.*/zznix/*!/! | sed -e s!.*/home/zach!~!)]$ '
fi
