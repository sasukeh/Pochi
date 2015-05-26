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

NeoBundleFetch 'petdance/vim-perl'
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundleFetch 'plasticboy/vim-markdown'
NeoBundleFetch 'kannokanno/previm'
NeoBundleFetch 'tyru/open-browser.vim'
NeoBundleFetch 'scrooloose/nerdtree'
NeoBundleFetch 'itchyny/lightline.vim'
NeoBundleFetch 'tpope/vim-fugitive'
NeoBundleFetch 'airblade/vim-gitgutter'

NeoBundle 'petdance/vim-perl'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/nerdtree'
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" " Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
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

"set dir
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp

" set display
set number
set showmode 
set title 
set ruler 
set showcmd
set showmatch 
set laststatus=2 
set number
set tabstop=2
set autoindent
set expandtab
set shiftwidth=2

" au
au BufRead,BufNewFile *.md set filetype=markdown

"--let settings
let g:previm_open_cmd = 'firefox &'
let g:vim_markdown_folding_disabled=1

"-- nnoremap 
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"---------- source settings
source ~/.vim/lightline
source ~/.vim/keybind
