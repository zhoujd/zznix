
zznix()
{
    case $1 in 
        -h | --help )
            echo "This is zznix help"
            ;;
        * )
            cd /c/zznix
            ;;
    esac
}
