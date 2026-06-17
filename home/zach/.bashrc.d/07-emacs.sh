### 07-emacs.sh

me() {
    if [[ "$1" == "--help" || "$1" == "--version" ]]; then
        /zach/bin/me "$@"
    else
        printf "\033[?1049h"
        /zach/bin/me "$@"
        printf "\033[?1049l"
    fi
}
