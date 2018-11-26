"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.config/nvim/plugins')

Plug 'chrisbra/csv.vim'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'terryma/vim-multiple-cursors'
Plug 'luochen1990/rainbow'
Plug 'raimondi/delimitmate'

Plug 'yuttie/comfortable-motion.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'brooth/far.vim'

Plug 'https://gitlab.com/Lenovsky/nuake.git'

Plug 'plytophogy/vim-virtualenv'
Plug 'w0rp/ale'

Plug 'elzr/vim-json'

Plug 'christianrondeau/vim-base64'

Plug 'vim-scripts/vim-auto-save'

Plug 'chrisbra/Colorizer'

Plug 'sheerun/vim-polyglot'

Plug 'sgur/vim-editorconfig'

Plug 'mxw/vim-jsx'

Plug 'vim-python/python-syntax'

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
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'mhartington/oceanic-next'
Plug 'nightsense/carbonized'
Plug 'ajmwagar/vim-deus'
Plug 'dikiaap/minimalist'
Plug 'joshdick/onedark.vim'
Plug 'sts10/vim-pink-moon'
Plug 'jdsimcoe/abstract.vim'
Plug 'junegunn/seoul256.vim'

Plug 'tpope/vim-commentary'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'Yggdroot/indentLine'

Plug 'majutsushi/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'

Plug 'milkypostman/vim-togglelist'

Plug 'sbdchd/neoformat'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'thirtythreeforty/lessspace.vim'

Plug 'jmcomets/vim-pony'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf8
set guifont=mononoki\ Nerd\ Font\ 18
set mouse=a

let g:python_host_prog = '/usr/bin/python3'
let g:python3_host_prog = '/usr/bin/python3'

let mapleader = ","

" Color scheme
colorscheme gruvbox
set t_Co=256
set background=dark

set number

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" check for and load file changes
autocmd WinEnter,BufWinEnter,FocusGained * checktime

" disable swapfile to avoid errors on load
set noswapfile


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
autocmd FileType yaml :IndentLinesDisable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => XML Language
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType xml setlocal colorcolumn=300
autocmd FileType xml setlocal shiftwidth=2
autocmd FileType xml setlocal tabstop=2
autocmd FileType xml setlocal expandtab
autocmd FileType xml setlocal smarttab

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
map <C-u> :source ~/.config/nvim/init.vim<CR>


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
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#tabline#left_alt_sep=' '
let g:airline#extensions#tabline#left_sep=''
let g:airline#extensions#tabline#right_sep=''
let g:airline#extensions#tabline#right_alt_sep=''
let g:airline_left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_powerline_fonts= 1
let g:airline_theme='gruvbox'
let g:airline_solarized_bg='dark'


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
let g:python_highlight_all = 1


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
let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 0
let g:ale_sign_column_always = 1
let b:ale_linters = ['pylint', 'flake8', 'vulture']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NeoFormat
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neoformat_enabled_python = ['yapf']
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
" => Nuake
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F4> :let g:nuake_size = 0.25<CR>:Nuake<CR>
inoremap <silent> <F4> <C-\><C-n>:Nuake<CR>
tnoremap <silent> <F4> <C-\><C-n>:Nuake<CR>

nnoremap <silent> <F5> :let g:nuake_size = 1<CR>:Nuake<CR>
inoremap <silent> <F5> <C-\><C-n>:Nuake<CR>
tnoremap <silent> <F5> <C-\><C-n>:Nuake<CR>

nnoremap <silent> <F6> :let g:nuake_size = 1<CR>:Nuake<CR><C-u>telnet 0.0.0.0 1234<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leaderf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <C-p> :Leaderf file --fullPath<CR>
vnoremap <silent> <C-p> :Leaderf file --fullPath<CR>
inoremap <silent> <C-p> :Leaderf file --fullPath<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DelimitMate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:delimitMate_autoclose = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_jump_expansion = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-N><C-w>h
tnoremap <C-w>j <C-\><C-N><C-w>j
tnoremap <C-w>k <C-\><C-N><C-w>k
tnoremap <C-w>l <C-\><C-N><C-w>l
tnoremap <C-Left> :bnext<CR>
tnoremap <C-Right> :bprevious<CR>
inoremap <C-w>h <C-\><C-N><C-w>h
inoremap <C-w>j <C-\><C-N><C-w>j
inoremap <C-w>k <C-\><C-N><C-w>k
inoremap <C-w>l <C-\><C-N><C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TagBar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbr_zoomwidth = 0
nnoremap <silent> <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DevIcons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" loading the plugin 
let g:webdevicons_enable = 1

" adding the flags to NERDTree 
let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 1

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Comfortable Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
let g:comfortable_motion_impulse_multiplier = 25  " Feel free to increase/decrease this value.
nnoremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
nnoremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ToggleList
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Deoplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#enable_typeinfo = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent Lines
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_char = ''


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GruvBox
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_italic = '1'
let g:gruvbox_invert_selection = '0'
let g:grucbox_number_column = 'bg2'
