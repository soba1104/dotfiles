imap <C-g> <ESC>
cmap <C-g> <ESC>
map  <C-g> <ESC>
set ts=2
set sts=2
set expandtab
set sw=2
set nobk
set ic
set hlsearch
set modeline
set modelines=5
syntax on

filetype off
filetype plugin indent off

set runtimepath+=$GOROOT/misc/vim
autocmd FileType go autocmd BufWritePre <buffer> Fmt
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif 
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'

"for Erlang
NeoBundle 'vim-erlang/vim-erlang-runtime'
NeoBundle 'vim-erlang/vim-erlang-omnicomplete'
NeoBundle 'vim-erlang/vim-erlang-tags'
NeoBundle 'vim-erlang/vim-erlang-compiler'

"Slim
NeoBundle 'slim-template/vim-slim'

"Unite
NeoBundle 'Shougo/unite.vim'
let g:unite_enable_start_insert=1
nnoremap <silent> <C-f> :Unite file_rec -default-action=tabopen<CR>

call neobundle#end()
NeoBundleCheck

filetype on
filetype plugin indent on

"nerdcommenter
map ;; <plug>NERDCommenterToggle
