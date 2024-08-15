syntax on
filetype on
colorscheme habamax
set cursorline
set linebreak
set foldenable
set nu
set showcmd

set tabstop=4
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
set list
set listchars=tab:>~,trail:.

set langmenu=zh_CN.UTF-8
set helplang=cn
set autowrite
set mouse=a
set nocompatible
set nobackup
set autochdir
set hlsearch
set incsearch
set backspace=indent,eol,start
set guifont=consolas:h13
set guioptions-=m
set guioptions-=T

" highlight Normal  ctermfg=252 ctermbg=none

map <F9> : ! g++ % -o %< -std=c++17 -g -Wall -Wextra -Wconversion && size %< <CR>
map <F8> : ! ./%< <CR>
map <F5> : ! lldb %< <CR>

inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
"inoremap { {<CR>}<ESC>kA
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i

autocmd FileType go setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType gowork setlocal tabstop=8 | setlocal shiftwidth=8 | setlocal softtabstop=8 | setlocal noexpandtab
autocmd FileType cpp setlocal tabstop=2 | setlocal shiftwidth=2 | setlocal softtabstop=2 | setlocal expandtab
autocmd FileType python setlocal tabstop=4 | setlocal shiftwidth=4 | setlocal softtabstop=4 | setlocal expandtab

let g:airline_theme='angr'

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos='left'

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

" NERDTree
nnoremap <C-CR> : NERDTreeToggle <CR>

:augroup cprograms
:   autocmd VimEnter *.cpp NERDTree | wincmd p
:   autocmd VimEnter *.cc NERDTree | wincmd p
:   autocmd VimEnter *.h NERDTree | wincmd p
:   autocmd VimEnter *.hh NERDTree | wincmd p
:   autocmd VimEnter *.go NERDTree | wincmd p
:   autocmd VimEnter *.py NERDTree | wincmd p
:   autocmd VimEnter *.md NERDTree | wincmd p
:   autocmd VimEnter *.txt NERDTree | wincmd p
:   autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
:augroup END
