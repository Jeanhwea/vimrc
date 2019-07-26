if &cp || v:version < 700 | finish | endif
if &cp | set nocp | endif

set rtp+=~/.vim/bundle/pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

" vim: set ft=vim :
