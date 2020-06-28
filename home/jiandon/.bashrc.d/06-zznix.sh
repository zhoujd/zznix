## 06-zznix.sh

z()
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

w()
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
