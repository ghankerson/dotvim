set nocp
execute pathogen#infect()

set number
set mouse=n
set ttymouse=xterm2
set nowrap
set encoding=utf-8
set guifont=/Users/ghankerson/Library/Fonts/Anonymice\ Powerline.ttf "make sure to escape the spaces in the name properly
set t_Co=256
set termguicolors
set foldmethod=syntax
set foldlevelstart=1000
set autoread
" au CursorHold * checktime

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
nmap <leader>tt :TagbarToggle<CR>
nmap <leader>rr :RunReek<CR>
nnoremap <LEADER>gp :Prettier<CR>
nmap <LEADER>j :%!python -m json.tool<CR>
nmap <silent> [c <Plug>(ale_previous_wrap)
nmap <silent> ]c <Plug>(ale_next_wrap)

" Prettier
let g:prettier#config#print_width = 120
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#parser = 'flow'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'true'
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat = 0

" Ale
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {'javascript': ['prettier', 'eslint']}
" Fix files automatically on save
let g:ale_fix_on_save = 1

" autocmd bufwritepost *.js silent !eslint --fix %
" autocmd bufwritepost *.tsx silent !npx tslint %
" autocmd bufwritepost *.js silent !prettier --write %
" autocmd bufwritepost *.tsx silent !prettier --write %
autocmd bufwritepost *.js redraw!
autocmd bufwritepost *.tsx redraw!

let g:ale_emit_conflict_warnings = 0
colorscheme PaperColor

" Source the vimrc file after saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" yank to clipboard
set clipboard=unnamed " copy to the system clipboard
