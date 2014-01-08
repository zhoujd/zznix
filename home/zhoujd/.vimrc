"Vim Setting for Zachary Zhou
set nocompatible

"windows os setting
if !has("unix")
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

"font setting
set guifont=Consolas:h12:cANSI
set guifontset=-*-Consolas-medium-r-normal--12-*-*-*-*-*-iso8859-1,fixed

"color scheme setting
colo desert

"other setting"
set novisualbell
set nobackup
set noswapfile
syntax on
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
if has("gui_running")
	set number
endif
set history=1000
set ignorecase
set hlsearch
set incsearch
set gdefault

"status line setting
set statusline=%<%f%m%r\ %y\ (%{&fileformat})\ \ (ascii=\%b,hex=\%B)\ \ (%l,%c)\ %p%%\ \ %=[%{strftime(\"%H:%M,%d/%m/%Y\")}]
set laststatus=2
set cmdheight=1
set ruler


