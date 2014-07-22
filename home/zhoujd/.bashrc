####.bashrc for zznix

# PS1 setting
if [ -z "$PS1" -o "$TERM" == "emacs" ]; then
    PS1='[\u@\h $(pwd | sed -e s!.*/zznix/*!/! | sed -e s!.*/home/zhoujd!~!)]$ '
fi    

# for chinese file name show
alias ls='ls -hF --show-control-chars --color=always'
alias ll='ls -l'
alias dir='ls -C'

alias la='ls -Al'        # show hide files
alias lx='ls -lXB'       # sort by extend
alias lk='ls -lSr'       # sort by size
alias lc='ls -lcr'       # sort by time
alias lu='ls -lur'       # sort by access time
alias lr='ls -lR'        # recurse ls
alias lt='ls -ltr'       # sort by date
alias lm='ls -al | more' # pipeline to more
alias tree='tree -Csu'   # another better way for 'ls'
alias pwd='pwd -W'       # only on win7

alias h='history'
alias j='jobs -l'
alias r='rlogin'
alias which='type -all'
alias ..='cd ..'
alias path='echo -e ${PATH//:/\\n}'
alias du='du -kh'
alias df='df -kTh'
alias cls='clear'
alias nano='nano -w'

# set ls folder color
export MAKE_MODE=unix
export LS_COLORS='di=1'

# set default options for 'less'
alias more='less'
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# set git editor
export GIT_EDITOR="nano"
