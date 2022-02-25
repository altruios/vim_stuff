" Vim with all enhancements

set expandtab                "Use spaces instead of tabs
set tabstop=4                "1 tab == 4 spaces
set shiftwidth=4             "Number of spaces to use for each step of (auto)indent
set autoindent               "Copy indent from current line when starting a new line
set showmatch                "Show matching brackets when text indicator is over them
set hlsearch                 "Highlight search results
set nowrap                   "Do not wrap lines
set maxmempattern=2000000    "Set the Maximum amount of memory (in Kbyte) to use for pattern matching
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
language messages en_US.utf-8
set nocompatible

filetype plugin on

syntax enable
syntax on


call plug#begin('~/.vim/plugin')
" The default plugin directory will be as follows:
"   - Vim (Windows): '~/vimfiles/plugged'
"   - e.g. `call plug#begin('~/.vim/plugged')`

" Make sure you use single quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vifm/vifm.vim'
Plug 'tpope/vim-markdown'
Plug 'h2ero/vim-markdown-wiki'
Plug 'junegunn/goyo.vim'
Plug 'reewr/vim-monokai-phoenix'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'pangloss/vim-javascript'
" Initialize plugin system
call plug#end()
set termguicolors
let g:mwikiTableAlign = "left"
let g:mwikis = [{'path':"R:/other/repos/wiki/"}]
colorscheme monokai-phoenix
"explore files
:nmap <space>e :CocCommand explorer<CR>

"auto complete using tab
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"







function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1] +~# '\s'
endfunction


" GOTO DEFINITIONS
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug><coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)




