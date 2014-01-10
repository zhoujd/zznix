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
set guifontset=-*-Consolas-normal-r-normal--12-*-*-*-*-*-iso8859-1,fixed

"ui setting
set shortmess=atI

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

"diff setting
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

