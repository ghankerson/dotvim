set nocp

set number relativenumber
set mouse=n
"set ttymouse=xterm2
set nowrap
set encoding=utf-8
set t_Co=256
set termguicolors
set foldmethod=syntax
set foldlevelstart=1000
set autoread " have vim re-read files that have changed automatically
set splitbelow
set nocompatible
set suffixesadd+=.js
set suffixesadd+=.rb

syntax on
filetype plugin indent on

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype sass setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 sw=2 expandtab smarttab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype php setlocal ts=4 sts=4 sw=4
autocmd FileType slim setlocal ts=2 sts=2 sw=2 expandtab smarttab

let mapleader = ' ' " Use spacebar as leader

nnoremap <LEADER>gs :Gstatus<CR>
nnoremap <LEADER>gw :Gwrite<CR>
nnoremap <LEADER>gr :Gread<CR>
nnoremap <LEADER>gm :Gmove<CR>
nnoremap <LEADER>gc :Gcommit<CR>
nnoremap <LEADER>gb :Gblame<CR>
nnoremap <LEADER>H <CR> :set hlsearch<CR>
nnoremap <LEADER>h <CR> :set nohlsearch<CR>
nnoremap <LEADER>n :NERDTree<CR>
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <LEADER>j :%!python -m json.tool<CR>
map <LEADER>n :NERDTreeToggle<CR>


" Ale
let g:ale_fixers = { 'javascript': ['eslint', 'prettier']}
let g:ale_javascript_eslint_executable = './node_modules/.bin/eslint'
let g:ale_javascript_prettier_executable = './node_modules/.bin/prettier'
let g:ale_sign_error = '*'
let g:ale_sign_warning = '⚠️'
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

Plug 'w0rp/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'edkolev/promptline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tpope/vim-fugitive'
Plug 'skalnik/vim-vroom'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'


call plug#end()

colorscheme PaperColor
let NERDTreeShowHidden=1

" FINDING FILES:

" Search through subdirectories
set path+=**

" display matching files with tab completion
set wildmenu

" TAG JUMPING:

" Create the tags file
command! MakeTags !ctags -R --exclude=build --exclude=dist 

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] to get a list of instances
" - Use ^t to get back up the tag stack

" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|
" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list
"
" SNIPPETS:

" Read an empty HTML template and move cursor to title
" - enter command mode  with :
" - call read command a read in the bare html template file
" - <CR> hit enter key
" - Go down 3 lines, go forward a word,  find the next > instance and enter insert mode after the >
" - or in other words insert the contents of the html template and put the cursor in the middle of the title tags in insert mode
nnoremap <Leader>html :-1read $HOME/.vim/templates/bare.html<CR>3jwf>a
