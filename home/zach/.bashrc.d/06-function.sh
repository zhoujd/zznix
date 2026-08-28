### 06-function.sh

cls() {
    printf "\033[2J\033[3J\033[H"
}

cd-zznix() {
    cd $ZZNIX
}

tmux-killall() {
    tmux kill-server
}

tmux-ls() {
    tmux ls
}
