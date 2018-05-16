# add zznix interval path
ADD_PATH=(
    /zznix/bin
    /zznix/cmd
)

for path in ${ADD_PATH[@]} ; do
    if [ -d $path ]; then
        PATH=$path:$PATH
    fi
done
