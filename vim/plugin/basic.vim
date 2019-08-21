if exists('g:load_basic') || &cp || v:version < 700
  finish
endif

if has('autocmd')
  filetype plugin indent on
endif

set list
if (&termencoding==#'utf-8'||&encoding==#'utf-8') && version >= 700
  " tab:▸ ,trail:␣
  let &listchars = "tab:\u25b8\u0020,trail:\u2423"
else
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<
endif

if has('syntax') && !exists('g:syntax_no')
  syntax enable
  set synmaxcol=1000
endif

set smarttab
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab

if &history < 5000 | set history=5000 | endif

if has('clipboard') | set clipboard=unnamed | endif

if has('gui') && has('gui_running')
  set background=dark
  colorscheme solarized
endif

nnoremap <LocalLeader>ew :e <C-r>=expand('%:p:h') . '/' <CR>
nnoremap <LocalLeader>es :sp <C-r>=expand('%:p:h') . '/' <CR>
nnoremap <LocalLeader>ev :vsp <C-r>=expand('%:p:h') . '/' <CR>
nnoremap <LocalLeader>et :tabe <C-r>=expand('%:p:h') . '/' <CR>

