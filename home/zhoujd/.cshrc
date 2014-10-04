### tcsh configure create by zhoujd at 2014/10/4

bindkey '\e[1~' beginning-of-line      # Home
bindkey '\e[3~' delete-char            # Delete
bindkey '\e[4~' end-of-line            # End
bindkey "^W" backward-delete-word      # Delete
#bindkey -k up history-search-backward  # PageUp
#bindkey -k down history-search-forward # PageDown

set cr = "%{\e[31m%}" #开始红色
set cg = "%{\e[32m%}" #开始绿色
set c0 = "%{\e[0m%}"  #恢复为默认色彩

# Set some variables for interactive shells
if ( $?prompt ) then
    if ( "$uid" == "0" ) then
	set prompt = "%B%U%n%u@%m.$cr%l$c0%b %c2 %B%#%b " 
    else
	set prompt = "%B%U%n%u@%m.$cg%l$c0%b %c2 %B%%%b "
    endif
endif

#让 ls 鲜艳些
setenv LSCOLORS ExGxFxdxCxegedabagExEx
setenv CLICOLOR yes
#让 grep 匹配到的字符高亮
setenv GREP_OPTIONS --color=auto

set autolist
set autoexpand
set history = 100
set savehist = 10

set correct = cmd

set noclobber

alias mv 'mv -i'
alias cp 'cp -i'

alias ..    'cd ..'       #两点即可回到上级目录
alias -	    'cd -'        #一杠返回上次的目录
alias q	    'exit'        #退出登录
alias rm    'rm -i'       #误删防御
alias del   'rm -r'       #删除整个目录
alias mv    'mv -i'       #覆盖防御
alias cp    'cp -i'       #覆盖防御
alias ls    'ls --show-control-chars --color=always' 
alias la    'ls -a'       #显示所有文件
alias ll    'ls -h -l'    #显示文件权限和大小（以合理的单位）
alias lr    'ls -R'       #递归显示目录
alias dh    'df -h -a -T' #以合适的单位显示所有磁盘的剩余空间，以及文件系统类型（如ufs、devfs、procfs）。
alias ds    'du -sh'      #以合适的单位显示查看每个文件/文件夹的大小
alias pwd   'dirs'        #当前目录
alias dir   'ls -C'

alias find-c	'find . -name "*.h" -o -name "*.c"'
alias find-x	'find . -name "*.h" -o -name "*.hpp" -o -name "*.cpp" -o -name "*.cxx"'
alias find-py	'find . -name ".py"'

alias wc-c	'find . -name "*.h" -o -name "*.c" | xargs wc | sort -k 4'
alias wc-x	'find . -name "*.h" -o -name "*.hpp" -o -name "*.cpp" -o -name "*.cxx" | xargs wc | sort -k 4'
alias wc-py	'find . -name ".py" | xargs wc | sort -k 4'

