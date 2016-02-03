####.bashrc for zznix

# PS1 setting
if [ -z "$PS1" -o "$TERM" == "emacs" ]; then
    PS1='[\u@\h $(pwd | sed -e s!.*/home/zhoujd!~!)]$ '
fi    


# for chinese file name show
alias ls='ls --show-control-chars --color=always'
alias ll='ls -l'
alias dir='ls -C'
alias pwd='pwd -W'
alias sshX='ssh +X'

# set ls folder color
export MAKE_MODE=unix
export LS_COLORS='di=1'

# set default options for 'less'
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh
