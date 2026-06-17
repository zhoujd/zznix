### 07-emacs.sh

me() {
    case $1 in
        --help|--version )
            /zach/bin/me "$@"
            ;;
        * )
            printf "\033[?1049h"
            /zach/bin/me "$@"
            printf "\033[?1049l"
            ;;
    esac
}
