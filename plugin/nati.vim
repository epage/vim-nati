" nati.vim - Coding standard for most nati code
" Maintainer: Ed Page
" Version: 1.0

if exists('g:loaded_nati') || &compatible
  finish
else
  let g:loaded_nati = 1
endif

set tabstop=3
set shiftwidth=3
" Whitespace inserted by tab key
set softtabstop=3
" Makes tab insert spaces
set expandtab
set smarttab

" See http://kien.github.io/ctrlp.vim/
let g:ctrlp_root_markers=['package']
" See https://github.com/mhinz/vim-signify
let g:signify_vcs_list = [ 'perforce', 'git' ]
