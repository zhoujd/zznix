#!/bin/sh

INSTALL_ROOT=`pwd`

Install_Bashrc()
{
echo "Install .bash_profile to $USERPROFILE"
cat > $USERPROFILE\\.bash_profile <<EOF
### zznix .bash_profile
export HOME="C:/zznix/home/zhoujd"
. \$HOME/.bash_profile
EOF
}

Install_Minttyrc()
{
echo "Install .minttyrc to $USERPROFILE"
cat > $USERPROFILE\\.minttyrc <<EOF
BoldAsFont=no
CursorType=block
Locale=en_US
Charset=UTF-8
Font=Microsoft YaHei Mono
FontHeight=12
CursorBlinks=no
EOF
}

Install_Fstab()
{
echo "Install zznix mount point to C:/Git/etc/fstab"
cat >> C:/Git/etc/fstab <<EOF
# This is zznix mount points
C:/zznix/home /home ntfs binary,noacl,posix=0,user 0 0
C:/zznix/zach /zach ntfs binary,noacl,posix=0,user 0 0
EOF
}

Install_Bashrc
Install_Minttyrc
