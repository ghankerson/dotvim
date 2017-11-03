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
autocmd Filetype php setlocal ts=4 sts=4 sw=4

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
nnoremap <LEADER>gp :Prettier<CR>

" Syntastic
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe = 'yarn lint --'

" Ruby
let g:syntastic_ruby_checkers=['rubocop']


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
autocmd BufWritePre *.jsx,*.mjs Prettier

colorscheme PaperColor

" Source the vimrc file after saving it
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
