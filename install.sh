#!/bin/sh

SCRIPT_ROOT=$(cd $(dirname $0) && pwd)
USER_HOME=$SCRIPT_ROOT/home/zach

install_bashrc()
{
    echo "Install .profile to $USERPROFILE"
    cat > $USERPROFILE/.profile <<EOF
### .profile
test -f ~/.bashrc && . ~/.bashrc
EOF
    echo "Install .bashrc to $USERPROFILE"
    cat > $USERPROFILE/.bashrc <<EOF
### .bashrc
export HOME="$USER_HOME"
. \$HOME/.bashrc
EOF
    echo "Install bashrc files done"
}

install_others()
{
    echo "Install .minttyrc to $USERPROFILE"
    cp -v $USER_HOME/.minttyrc $USERPROFILE
    echo "Install .tmux.conf to $USERPROFILE"
    cp -v $USER_HOME/.tmux.conf $USERPROFILE
    echo "Install .vimrc to $USERPROFILE"
    cp -v $USER_HOME/.vimrc $USERPROFILE
    echo "Install .vim files to $USERPROFILE"
    mkdir -p $USERPROFILE/vimfiles
    cp -rv $USER_HOME/.vim/* $USERPROFILE/vimfiles
    echo "Install alacritty files to $APPDATA"
    cp -rv $USER_HOME/.config/alacritty $APPDATA
    echo "Install others done"
}

install_fstab()
{
    echo "Install zznix mount point to C:/Git/etc/fstab"
    cat >> C:/Git/etc/fstab <<EOF
# This is zznix mount points
C:/zznix/home /home ntfs binary,noacl,posix=0,user 0 0
C:/zznix/zach /zach ntfs binary,noacl,posix=0,user 0 0
EOF
    echo "Install fstab done"
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
