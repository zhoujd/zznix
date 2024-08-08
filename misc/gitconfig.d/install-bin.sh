#!/bin/bash

SCRIPT_ROOT=$(cd $(dirname $0) && pwd -W)

Install_bin() {
    echo "The script is support Git bash on Windows"
    ln -sfvT $SCRIPT_ROOT/bin/git-lmr /usr/bin/git-lmr
    ln -sfvT $SCRIPT_ROOT/bin/git-lpr /usr/bin/git-lpr
    ln -sfvT $SCRIPT_ROOT/bin/git-mr  /usr/bin/git-mr
    ln -sfvT $SCRIPT_ROOT/bin/git-pr  /usr/bin/git-pr
}

Install_bin
