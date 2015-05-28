"----------------------------------------
"
"  sasukeh's .vimrc
"
"----------------------------------------

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
NeoBundleFetch 'nathanaelkane/vim-indent-guides'

NeoBundle 'petdance/vim-perl'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'editorconfig/editorconfig-vim'
" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
set t_Co=256
syntax on
 colorscheme jellybeans
" colorscheme blue

"set dir
set directory=~/.vim/tmp
set backupdir=~/.vim/tmp
set undodir=~/.vim/tmp
" set display
set autoindent
set number
set showmode 
set title 
set ruler 
set showcmd
set showmatch 
set softtabstop=2
set shiftwidth=2
set laststatus=2 
set tabstop=2
set expandtab
set tabstop<
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト (2013-07-03 14:30 修正）

" バックスラッシュやクエスチョンを状況に合わせ自動的にエスケープ
" au
au BufRead,BufNewFile *.md set filetype=markdown

"--let settings
let g:previm_open_cmd = 'firefox &'
let g:vim_markdown_folding_disabled=1
let g:indent_guides_auto_colors = 1

"--- hi


"-- nnoremap 
nnoremap <silent><C-e> :NERDTreeToggle<CR>
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
inoremap jj <Esc> " 素早くjx2でescと同じ効果

"---------- source settings
source ~/.vim/lightline
source ~/.vim/keybind
