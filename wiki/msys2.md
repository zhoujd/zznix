msys2
=====

## URLs

```
## https://www.msys2.org/
## https://github.com/msys2/msys2-installer/releases/download/2026-06-11/msys2-x86_64-20260611.exe
```

## MinGW-w64 compiler

``
$ pacman -Syu
$ pacman -S mingw-w64-ucrt-x86_64-gcc
$ pacman -S --needed base base-devel mingw-w64-x86_64-toolchain
$ g++ --version
```

## Compile dvtm

```
$ pacman -Syu
$ pacman -S make msys2-w32api-headers gcc git ncurses-devel
$ cd dvtm
$ echo "CFLAGS += -D_WCTYPE_T" >> config.mk
$ make
$ make install
```
