## 06-zznix.sh

zx()
{
    case $1 in 
        -h | --help )
            echo "This is for go to zznix"
            ;;
        * )
            cd /c/zznix
            ;;
    esac
}

ws()
{
    case $1 in 
        -h | --help )
            echo "This is for go to work"
            ;;
        * )
            cd /c/work
            ;;
    esac
}
