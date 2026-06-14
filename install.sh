#!/bin/sh

SCRIPT_ROOT=$(cd $(dirname $0) && pwd)
USER_HOME=$SCRIPT_ROOT/home/zach

install_bashrc()
{
    echo "Install .bash_profile to $USERPROFILE"
    cat > $USERPROFILE/.bash_profile <<EOF
### .bash_profile
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc
EOF
    echo "Install .bashrc to $USERPROFILE"
    cat > $USERPROFILE/.bashrc <<EOF
### .bashrc
export HOME="$USER_HOME"
. \$HOME/.bashrc
EOF
    echo "Install bashrc Done"
}

install_others()
{
    echo "Install .minttyrc to $USERPROFILE"
    cp -v $USER_HOME/.minttyrc $USERPROFILE
    echo "Install .vimrc to $USERPROFILE"
    cp -v $USER_HOME/.vimrc $USERPROFILE
    echo "Install alacritty config to $APPDATA"
    cp -rv $USER_HOME/.config/alacritty $APPDATA
    echo "Install others Done"
}

install_fstab()
{
    echo "Install zznix mount point to C:/Git/etc/fstab"
    cat >> C:/Git/etc/fstab <<EOF
# This is zznix mount points
C:/zznix/home /home ntfs binary,noacl,posix=0,user 0 0
C:/zznix/zach /zach ntfs binary,noacl,posix=0,user 0 0
EOF
}


case $1 in
    bashrc|-b )
        install_bashrc
        ;;
    others|-o )
        install_others
        ;;
    fstab|-f )
        install_fstab
        ;;
    all|-a )
        install_bashrc
        install_others
        ;;
    * )
        echo "$(basename $0) {bashrc|-b|others|-o|fstab|-f|all|-a}"
        ;;
esac
