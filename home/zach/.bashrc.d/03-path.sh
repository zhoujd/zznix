### add zznix interval path

ADD_PATH=(
    ~/.local/bin
    ~/.zach/bin
    /usr/bin
    /zach/bin
    /zach/libexec
)
for new_entry in ${ADD_PATH[@]} ; do
    if [ -d $new_entry ]; then
        case ":$PATH:" in
            *":$new_entry:"*) :;;           # already there
            *) PATH="$new_entry:$PATH";;    # or PATH="$PATH:$1"
        esac
    fi
done
unset APP_PATH
export PATH
