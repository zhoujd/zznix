####.bashrc for zznix

# set ls folder color
export MAKE_MODE=unix
export PAGER=less
export LESS=-FRSX
export LESSCHARSET=utf-8
export PLINK_PROTOCOL=ssh
export DISPLAY=localhost:0.0

# load base setting
BASE_SETTING=(
    ~/.bash_ps
    ~/.bash_alias
    ~/.bash_mount
    ~/.bash_path
    ~/.bash_proxy
)

for file in ${BASE_SETTING[@]} ; do
    test -f $file && . $file
done

# load other setting
OTHER_SETTING=(
    ~/zzemacs/etc/profile
)

for file in ${OTHER_SETTING[@]} ; do
    test -f $file && . $file
done
