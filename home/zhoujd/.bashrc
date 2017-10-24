####.bashrc for zznix

# set ls folder color
export MAKE_MODE=unix

# set default options for 'less'
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# set DISPLAY environment
export DISPLAY=localhost:0.0

# mount zznix
if [ -f $HOME/.bash_mount ] ; then
    . $HOME/.bash_mount
fi

# add path for mini setup
if [ -f $HOME/.bash_path ] ; then
    . $HOME/.bash_path
fi

# proxy setting
if [ -f $HOME/.bash_proxy ] ; then
    . $HOME/.bash_proxy
fi

# self bash-setting from zzemacs
if [ -f $HOME/zzemacs/etc/profile ] ; then
    . $HOME/zzemacs/etc/profile
fi 
