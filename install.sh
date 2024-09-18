#!/bin/sh

INSTALL_ROOT=`pwd`

install_bashrc()
{
    echo "Install .bash_profile to $USERPROFILE"
    cat > $USERPROFILE/.bash_profile <<EOF
### zznix .bash_profile
test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc
EOF
    echo "Install .bashrc to $USERPROFILE"
    cat > $USERPROFILE/.bashrc <<EOF
### zznix .bashrc
export HOME="/home/zach"
. \$HOME/.bashrc
EOF
        echo "Install bashrc Done"
}

install_others()
{
    echo "Install .minttyrc to $USERPROFILE"
    cp -v C:/zznix/home/zach/.minttyrc $USERPROFILE
    echo "Install .vimrc to $USERPROFILE"
    cp -v C:/zznix/home/zach/.vimrc $USERPROFILE
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

install_bashrc
install_others
