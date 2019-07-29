#!/usr/bin/env bash
BRED="\033[01;31m"
BBLUE="\033[01;34m"
BGREEN="\033[01;32m"
DEFAULT="\033[00m"

# _clone repo name
_clone() {
  local repo=$1
  local name=$2
  local des="$HOME/.vim/bundle/$name"
  if [[ $repo =~ ^Jeanhwea/.*$ ]]; then
    local url="git@github.com:${repo}.git"
  else
    local url="https://github.com/${repo}.git"
  fi
  if [ ! -d $des ]; then
    echo -e "==> git clone $BBLUE$url$DEFAULT $des"
    git clone $url $des
  else
    echo -e "==> $BBLUE$name$DEFAULT is already installed"
  fi
}

_clone Jeanhwea/vim-matchit matchit
_clone Jeanhwea/vim-ultisnips-snippets ultisnips-snippets
# _clone Jeanhwea/vim-viz syntax-viz
_clone SirVer/ultisnips ultisnips
_clone airblade/vim-gitgutter gitgutter
_clone altercation/vim-colors-solarized colorscheme-solarized
_clone bps/vim-textobj-python textobj-python
_clone ctrlpvim/ctrlp.vim ctrlp
_clone fs111/pydoc.vim pydoc
_clone godlygeek/tabular tabular
_clone hdima/python-syntax syntax-python
_clone jceb/vim-textobj-uri textobj-uri
_clone kana/vim-textobj-user textobj-user
_clone majutsushi/tagbar tagbar
_clone mileszs/ack.vim ack
_clone plasticboy/vim-markdown syntax-markdown
_clone rking/ag.vim ag
_clone scrooloose/syntastic syntastic
_clone sgur/vim-textobj-parameter textobj-parameter
_clone sjl/gundo.vim gundo
_clone tacahiroy/ctrlp-funky ctrlp-funky
_clone tommcdo/vim-exchange exchange
_clone tpope/vim-abolish abolish
_clone tpope/vim-commentary commentary
_clone tpope/vim-dispatch dispatch
_clone tpope/vim-endwise endwise
_clone tpope/vim-eunuch eunuch
_clone tpope/vim-fugitive fugitive
_clone tpope/vim-pathogen pathogen
_clone tpope/vim-rails rails
_clone tpope/vim-repeat repeat
_clone tpope/vim-rhubarb rhubarb
_clone tpope/vim-scriptease scriptease
_clone tpope/vim-sensible sensible
_clone tpope/vim-surround surround
_clone tpope/vim-unimpaired unimpaired
_clone tpope/vim-dadbod dadbod
