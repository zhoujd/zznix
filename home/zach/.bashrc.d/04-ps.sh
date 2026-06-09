### .bashrc

# PS1
PS1='\[\033[32m\]\u@\h \W\[\033[0m\]$ '

# set window title
TITLEBAR='\[\033]0;\W $$@\h\007\]'
PS1=${TITLEBAR}${PS1}
