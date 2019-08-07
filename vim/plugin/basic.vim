if exists('g:load_basic') || &cp || v:version < 700
  finish
endif

if has('autocmd')
  filetype plugin indent on
endif

if has('syntax') && !exists('g:syntax_no')
  syntax enable
  set synmaxcol=800
endif

set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

if &history < 5000 | set history=5000 | endif

if has('clipboard') | set clipboard=unnamd | endif

