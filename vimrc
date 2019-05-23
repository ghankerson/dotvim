set nocp

set number
set mouse=n
"set ttymouse=xterm2
set nowrap
set encoding=utf-8
set t_Co=256
set termguicolors
set foldmethod=syntax
set foldlevelstart=1000
set autoread
set splitbelow

syntax on
filetype plugin indent on

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 sw=2 expandtab smarttab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd FileType slim setlocal ts=2 sts=2 sw=2 expandtab smarttab

" Use formatprg when available
let g:neoformat_try_formatprg = 1

let mapleader = ' '

nnoremap <LEADER>n :NERDTreeToggle<CR>
nnoremap <LEADER>gs :Gstatus<CR>
nnoremap <LEADER>gw :Gwrite<CR>
nnoremap <LEADER>gr :Gread<CR>
nnoremap <LEADER>gm :Gmove<CR>
nnoremap <LEADER>gc :Gcommit<CR>
nnoremap <LEADER>gb :Gblame<CR>
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <LEADER>j :%!python -m json.tool<CR>

let g:python_host_prog = "/usr/local/bin/python2"
let g:python3_host_prog = "/usr/local/bin/python3"

" Ale
let g:ale_javascript_eslint_executable = './node_modules/.bin/eslint'
let g:ale_sign_error = '*'
let g:ale_sign_warning = '⚠️'
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_echo_msg_format = '%linter% says %s'

autocmd bufwritepost *.js redraw!
autocmd bufwritepost *.tsx redraw!

let g:ale_emit_conflict_warnings = 0

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" yank to clipboard
set clipboard=unnamed " copy to the system clipboard

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'edkolev/promptline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'skalnik/vim-vroom'
Plug 'sheerun/vim-polyglot'
Plug 'ajh17/VimCompletesMe'


call plug#end()

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

colorscheme PaperColor
