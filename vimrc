execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=n
set ttymouse=xterm2
set nowrap
set encoding=utf-8
set guifont=/Users/ghankerson/Library/Fonts/Anonymice\ Powerline.ttf "make sure to escape the spaces in the name properly


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab smarttab
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd vimenter * NERDTree


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

let g:syntastic_javascript_checkers=['eslint', 'standard']

colorscheme jellybeans

" Source the vimrc file afkjjjkkkter saving it
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
