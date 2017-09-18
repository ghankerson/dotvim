execute pathogen#infect()

set number
set mouse=n
set ttymouse=xterm2
set nowrap
set encoding=utf-8
set guifont=/Users/ghankerson/Library/Fonts/Anonymice\ Powerline.ttf "make sure to escape the spaces in the name properly
set t_Co=256
set termguicolors

syntax on
filetype plugin indent on

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 sw=2 expandtab smarttab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd vimenter * NERDTree
autocmd FileType javascript setlocal formatprg=prettier\ --no-semi\ --stdin\ --parser\ flow\ --print-width\ 120\ --single-quote\ --trailing-comma\ es6
autocmd FileType jsx setlocal formatprg=prettier\ --stdin\ --no-semi\ --parser\ flow\ --print-width\ 120\ --single-quote\ --trailing-comma\ es6
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
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>tt :TagbarToggle<CR>
nmap <leader>rr :RunReek<CR>
nmap <leader>rc :RuboCop<CR>
nmap <leader>rcf :RuboCop -a<CR>
nnoremap <LEADER>gp :silent %!prettier --stdin --single-quote --print-width=120 --no-semi<CR>
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" let g:syntastic_javascript_checkers=['eslint', 'standard']
let g:syntastic_javascript_checkers=[]
" let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

colorscheme jellybeans

" Source the vimrc file afkjjjkkkter saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

	if has("unnamedplus") " X11 support
	set clipboard+=unnamedplus
	endif
endif
