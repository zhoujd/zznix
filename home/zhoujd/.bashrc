####.bashrc for zznix

# set ls folder color
export MAKE_MODE=unix
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8
export PLINK_PROTOCOL=ssh
export DISPLAY=localhost:0.0

# load bash setting
test -f ~/.bash_ps    && . ~/.bash_ps
test -f ~/.bash_alias && . ~/.bash_alias
test -f ~/.bash_mount && . ~/.bash_mount
test -f ~/.bash_path  && . ~/.bash_path
test -f ~/.bash_proxy && . ~/.bash_proxy

# self bash-setting from zzemacs
test -f ~/zzemacs/etc/profile && . ~/zzemacs/etc/profile

