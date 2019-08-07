if &cp || v:version < 700 | finish | endif
if &cp | set nocp | endif

let mapleader="\\"
let g:mapleader="\\"
let maplocalleader=","
let g:maplocalleader=","

if !isdirectory(expand('~/.vim/bundle/pathogen')) | finish | endif
set rtp+=~/.vim/bundle/pathogen
exe pathogen#infect()

" vim:set ft=vim et sw=2 fdm=marker:
