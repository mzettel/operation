"""""""""""""""""""""""""""""""""""
"  My Vimproved Configuration
"  2009-10-15
"""""""""""""""""""""""""""""""""""

" set noncompatibility mode
set nocp
"set backup
" Substitudes Tabs with space 
set expandtab
" Highlight search results
set hlsearch

" set listchars
" enable syntax highlighting
syntax on
" change theme to dark (for dark background
set background=light
" show commands?
set showcmd
" show matches?
set showmatch
" ignore case sensitivity while searching?
set ignorecase
" do incremental search ?
set incsearch
" enable backspace
set backspace=2
" show position of cusor in cmd bar
set ruler

set tabstop=2
set shiftwidth=2

set showmode
set spelllang=de,en

set ai
"set list
"set listchars=tab:>-,trail:⋅

set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%]

let &printexpr="(v:cmdarg=='' ? ".
    \"system('lpr' . (&printdevice == '' ? '' : ' -P' . &printdevice)".
        \". ' ' . v:fname_in) . delete(v:fname_in) + v:shell_error".
            \" : system('mv '.v:fname_in.' '.v:cmdarg) + v:shell_error)"
