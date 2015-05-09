####.bashrc for zznix

# source .bash_profile
if [ -f ${HOME}/.bash_profile ] ; then
    . ${HOME}/.bash_profile
fi

# set ls folder color
export MAKE_MODE=unix

# set default options for 'less'
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8

# set default protocol for 'plink'
export PLINK_PROTOCOL=ssh

# set git && hg editor
#export GIT_EDITOR="nano"
#export HGEDITOR="nano"
#export GIT_SSH="/share/putty/TortoisePlink -ssh"
#export GIT_SSH="/bin/ssh"

# set DISPLAY environment
export DISPLAY=localhost:0.0

# self bash-setting from zzemacs
if [ -d $HOME/zzemacs ] ; then
    export PATH=$HOME/zzemacs/bin:$HOME/zzemacs/libexec:$PATH
    for i in $HOME/zzemacs/etc/profile.d/*.sh ; do
        if [ -r "$i" ]; then
            if [ "${-#*i}" != "$-" ]; then
                . "$i"
            else
                . "$i" >/dev/null 2>&1
            fi
        fi
    done
fi
