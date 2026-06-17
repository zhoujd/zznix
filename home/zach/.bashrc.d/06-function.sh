## 06-zznix.sh

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
