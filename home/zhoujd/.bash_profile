#
# Get the aliases and functions
#

prompt_short()
{
	pwd | sed -e s!.*/zznix/*!/! | sed -e s!.*/home/zhoujd!-!
}

PS1='\[\033[32m$(prompt_short)\033[36m $(__git_ps1 "%s")\033[0m\]
$ '

# Set window title
TITLEBAR='\[\033]0; $(prompt_short)\007\]'
PS1=${TITLEBAR}${PS1}

if [ -f ${HOME}/.bashrc ] ; then
    . ${HOME}/.bashrc
fi

# Git ssh tool select
#GIT_SSH=/share/putty/TortoisePlink
#GIT_SSH=/bin/ssh
