## 05-alias.sh

# for chinese file name show
alias ls='ls --show-control-chars --color=always'
alias ll='ls -alF'
alias l='ls -CF'
alias la='ls -Al'                  # show hide files
alias lx='ls -lXB'                 # sort by extend
alias lk='ls -lSr'                 # sort by size
alias lc='ls -lcr'                 # sort by time
alias lu='ls -lur'                 # sort by access time
alias lr='ls -lR'                  # recurse ls
alias lt='ls -ltr'                 # sort by date
alias lh='ls -lh'                  # ls for -h
alias lm='ls -al | more'           # pipeline to more

alias dir='ls -C'                  # only on win7
alias cls='clear'                  # only on win7
alias nano='nano -w'
alias more='less'
alias lcsh='csh -l'
alias unix2dos='dos2unix --u2d'
alias dos2unix='dos2unix --d2u'
alias sh='sh --login -i'
