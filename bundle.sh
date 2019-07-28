#!/usr/bin/env bash
BRED="\033[01;31m"
BBLUE="\033[01;34m"
BGREEN="\033[01;32m"
DEFAULT="\033[00m"

# __clone repo name
__clone() {
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

__clone Jeanhwea/vim-matchit matchit
__clone Jeanhwea/vim-ultisnips-snippets ultisnips-snippets
# __clone Jeanhwea/vim-viz syntax-viz
__clone SirVer/ultisnips ultisnips
__clone airblade/vim-gitgutter gitgutter
__clone altercation/vim-colors-solarized colorscheme-solarized
__clone bps/vim-textobj-python textobj-python
__clone ctrlpvim/ctrlp.vim ctrlp
__clone fs111/pydoc.vim pydoc
__clone godlygeek/tabular tabular
__clone hdima/python-syntax syntax-python
__clone jceb/vim-textobj-uri textobj-uri
__clone kana/vim-textobj-user textobj-user
__clone majutsushi/tagbar tagbar
__clone mileszs/ack.vim ack
__clone plasticboy/vim-markdown syntax-markdown
__clone rking/ag.vim ag
__clone scrooloose/syntastic syntastic
__clone sgur/vim-textobj-parameter textobj-parameter
__clone sjl/gundo.vim gundo
__clone tacahiroy/ctrlp-funky ctrlp-funky
__clone tommcdo/vim-exchange exchange
__clone tpope/vim-abolish abolish
__clone tpope/vim-commentary commentary
__clone tpope/vim-dispatch dispatch
__clone tpope/vim-endwise endwise
__clone tpope/vim-eunuch eunuch
__clone tpope/vim-fugitive fugitive
__clone tpope/vim-pathogen pathogen
__clone tpope/vim-rails rails
__clone tpope/vim-repeat repeat
__clone tpope/vim-rhubarb rhubarb
__clone tpope/vim-scriptease scriptease
__clone tpope/vim-sensible sensible
__clone tpope/vim-surround surround
__clone tpope/vim-unimpaired unimpaired
__clone tpope/vim-dadbod dasbod

