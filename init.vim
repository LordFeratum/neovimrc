"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugins')

Plug 'vim-scripts/vim-auto-save'

Plug 'chrisbra/Colorizer'

Plug 'sgur/vim-editorconfig'

Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'kbrw/elixir.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jdkanani/vim-material-theme'
Plug 'jscappini/material.vim'
Plug 'tomasr/molokai'
Plug 'freeo/vim-kalisi'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'frankier/neovim-colors-solarized-truecolor-only'

Plug 'tpope/vim-commentary'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree'

Plug 'neomake/neomake'

Plug 'milkypostman/vim-togglelist'

Plug 'sbdchd/neoformat'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'itchyny/calendar.vim'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'thirtythreeforty/lessspace.vim'

Plug 'jmcomets/vim-pony'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'

autocmd CompleteDone * pclose " To close preview window of deoplete automagically

let mapleader = ","

" Color scheme
colorscheme hybrid_material
set background=dark

set number

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"More than 79 chars in python mark in red
autocmd FileType python setlocal colorcolumn=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufExplorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <C-x> :bp <bar> sp <bar> bn <bar> bd <CR>
map <C-r> :source ~/.config/nvim/init.vim<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 1

nnoremap <silent> <F9> :TagbarToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>s :SyntasticToggleMode<cr>
map <leader>c :SyntasticCheck<cr>
map <leader>e :lopen<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gs :Gstatus<cr>
map <leader>gc :Gcommit -am
map <leader>gl :Gpull<cr>
map <leader>gp :Gpush<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='hybrid'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-Right> :bnext<CR>
nnoremap <C-Left> :bprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let python_highlight_all = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoSnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory='~/.config/nvim/plugins/neosnippet-snippets/neosnippets'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoSnippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-Down> :m .+1<CR>==
nnoremap <silent> <C-Up> :m .-2<CR>==
vnoremap <silent> <C-Down> :m '>+1<CR>gv=gv
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv
inoremap <silent> <C-Down> <Esc>:m .+1<CR>==gi
inoremap <silent> <C-Up> <Esc>:m .-2<CR>==gi


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neomake
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neomake_python_enabled_makers = ['pyflakes']
let g:neomake_python_flake8_maker = { 'args': ['--ignore=E115,E266,E501'], }
let g:neomake_python_pep8_maker = { 'args': ['--max-line-length=80', '--ignore=E115,E266'], }
autocmd! BufWritePost * Neomake


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoFormat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_python = ['autopep8', 'yapf']
nnoremap <C-f> :Neoformat<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Calendar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

nnoremap <silent> <C-c> :Calendar<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-g> :Goyo<CR>
let g:goyo_width = 100
let g:goyo_height = 100
let g:goyo_linenr = 0
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LessSpace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lessspace_enabled = 1
let g:lessspace_whitelist = ['python']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto Save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=100000
let g:auto_save = 1
let g:auto_save_no_updatetime = 0
let g:auto_save_in_insert_mode = 0
