" VIMRC
set number
set tabstop=4
set laststatus=2
set t_Co=256
" 行を強調表示
set cursorline
" 列を強調表示
set cursorcolumn

"NEOBUNDLE
let g:neocomplcache_enable_at_startup = 1
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'bling/vim-airline'
NeoBundle 'sjl/badwolf'
NeoBundle 'tomasr/molokai'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'osyo-manga/vim-over'
filetype plugin on
NeoBundleCheck
colorscheme badwolf
imap <C-k> <Plug>(neosnippet_expand_or_jump)
" NEOBUNDLE END

" JAVA START
set sm
set ai
syntax on
let java_highlight_all=1
let java_highlight_function="style"
let java_allow_cpp_keyword=1
set tags=~./tags
set complete=.,w,b,u,t,i
set foldmethod=indent
" JAVA END
