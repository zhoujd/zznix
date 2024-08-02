#### .bashrc

# load script in ~/.bashrc.d
for i in ~/.bashrc.d/*.sh ; do
    [ -r "$i" ] && . "$i" >/dev/null 2>&1
done
