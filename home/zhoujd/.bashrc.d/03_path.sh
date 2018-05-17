# add zznix interval path
ADD_PATH=(
    /zach/bin
    /zach/libexec
    /zach/libexec/git-flow
)

for path in ${ADD_PATH[@]} ; do
    if [ -d $path ]; then
        PATH=$path:$PATH
    fi
done
