#
# Get the aliases and functions
#

prompt_short()
{
	pwd | sed -e s!.*/zznix/*!/! | sed -e s!.*/home/zhoujd!-!
}

PS1='\[\033[32m$(prompt_short)\033[36m $(__git_ps1 "%s")\033[0m\]
$ '

if [ -f ${HOME}/.bashrc ] ; then
    . ${HOME}/.bashrc
fi
