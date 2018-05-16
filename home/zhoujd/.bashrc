####.bashrc for zznix

# set ls folder color
export MAKE_MODE=unix
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8
export PLINK_PROTOCOL=ssh
export DISPLAY=localhost:0.0

# load bash setting
BASH_SETTING=(
    ~/.bash_ps
    ~/.bash_alias
    ~/.bash_mount
    ~/.bash_path
    ~/.bash_proxy

    # base setting from zzemacs
    ~/zzemacs/etc/profile
)

for file in ${BASH_SETTING[@]} ; do
    test -f $file && . $file
done
