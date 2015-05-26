" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch 'plasticboy/vim-markdown'
NeoBundleFetch 'kannokanno/previm'
NeoBundleFetch 'tyru/open-browser.vim'
NeoBundleFetch 'scrooloose/nerdtree'
NeoBundleFetch 'itchyny/lightline.vim'
NeoBundleFetch 'tpope/vim-fugitive'
NeoBundleFetch 'airblade/vim-gitgutter'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
set t_Co=256
syntax on
" colorscheme jellybeans
colorscheme blue

set number
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

source ~/.vim/lightline
source ~/.vim/keybind
