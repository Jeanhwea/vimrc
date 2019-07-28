if &cp || v:version < 700 | finish | endif
if !isdirectory(expand('~/.vim/bundle/pathogen')) | finish | endif
if &cp | set nocp | endif

" setup leader key, this must be set at startup.
let mapleader="\\"
let g:mapleader="\\"
let maplocalleader=","
let g:maplocalleader=","

set rtp+=~/.vim/bundle/pathogen
execute pathogen#infect()

" vim:set ft=vim et sw=2:
