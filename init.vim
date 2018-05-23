"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugins')

Plug 'w0rp/ale'

Plug 'christianrondeau/vim-base64'

Plug 'vim-scripts/vim-auto-save'

Plug 'chrisbra/Colorizer'

Plug 'sgur/vim-editorconfig'

Plug 'mxw/vim-jsx'

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

Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'tweekmonster/impsort.vim'

Plug 'tpope/vim-commentary'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree'

Plug 'milkypostman/vim-togglelist'

Plug 'sbdchd/neoformat'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

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
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd FileType python setlocal si
autocmd FileType python setlocal ai
autocmd FileType python setlocal expandtab
autocmd FileType python setlocal smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javscript Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType javascript setlocal colorcolumn=100
autocmd FileType javascript setlocal shiftwidth=2
autocmd FileType javascript setlocal tabstop=2
autocmd FileType javascript setlocal expandtab
autocmd FileType javascript setlocal smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YAML Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType yaml setlocal colorcolumn=300
autocmd FileType yaml setlocal shiftwidth=2
autocmd FileType yaml setlocal tabstop=2
autocmd FileType yaml setlocal expandtab
autocmd FileType yaml setlocal smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Makefiles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType make setlocal noexpandtab


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Linebreak on 500 characters
set lbr
set tw=500

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
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#ale#enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\  'python': ['yapf'],
\}
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let b:ale_linters = ['flake8', 'pylint']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoFormat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_python = ['autopep8', 'yapf']
nnoremap <C-f> :Neoformat<CR>


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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_python = 'python3'
