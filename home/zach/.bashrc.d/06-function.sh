## 06-zznix.sh

microemacs() {
    # 1. Switch Alacritty to the Alternate Screen Buffer
    printf "\033[?1049h"
    # 2. Run the editor binary (pass all file arguments)
    /zach/bin/me "$@"
    # 3. Upon exit, switch back to the Main Screen Buffer
    printf "\033[?1049l"
}

cls() {
    printf "\033[2J\033[3J\033[H"
}

zx() {
    case $1 in 
        -h | --help )
            echo "This is for go to zznix"
            ;;
        * )
            cd /c/zznix
            ;;
    esac
}

ws() {
    case $1 in 
        -h | --help )
            echo "This is for go to work"
            ;;
        * )
            cd $HOME/work
            ;;
    esac
}
