"" General settings
"
" Everyone's first vi session. ^C^C^X^X^X^XquitqQ!qdammit[esc]qwertyuiopasdfghjkl;:xwhat
" How do you generate a random string? Put a first year CS student in front 
" of VIM and tell him to save and exit.
"
set encoding=utf-8

" sane text files
set fileformat=unix

" 256 colors
set t_Co=256

" Switch off Vi compatibility (can cause unexpected Vim behavior when on)
set nocompatible
" Update window title
set title
" " Display cursor position
set ruler
" " Highlight search results
set nohlsearch
" " Hightlight search results while typing
set incsearch
" case insensitive search
set ignorecase
set smartcase
" " Show line numbers
set number
" " Enable backspace normal behavior
set backspace=indent,eol,start
set whichwrap+=<,>,h,l
" " Disable swap file generation
set noswapfile
" No annoying sound on errors
set noerrorbells
set novisualbell

" no line wrapping
" set nowrap

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" most important option ever
set viminfo="NONE"

" Repeat one more time for screen
" set visualbell

" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Don’t add empty newlines at the end of files
set binary
set noeol

" Change mapleader
let mapleader=","

" Centralize backups, swapfiles and undo history
" set backupdir=~/.vim/backups
" set directory=~/.vim/swaps
" if exists("&undodir")
" set undodir=~/.vim/undo
" endif

" Don’t create backups when editing files in certain directories
" set backupskip=/tmp/*,/var/tmp/*
"
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignorecase
set wildmenu
set wildmode=longest,full

" Enable filetype detection test
filetype on
filetype plugin on
filetype indent on

execute pathogen#infect()
syntax on
filetype plugin indent on

" Ever notice a slight lag after typing the leader key + command? This lowers
" the timeout.
set timeoutlen=500
set ttimeoutlen=0

" Switch between buffers without saving
set hidden 

" Automatically save file when switching the buffer
" set autowriteall

" Add a bit extra margin to the left
" set foldcolumn=0

" Always show the status line
set laststatus=2

" Autocompletion (Ctrl+N) config
set complete=.,w,b,t

" Show command in bottom right portion of the screen  
set showcmd

" display cursor co-ords at all times
set ruler
set cursorline

" Set font type and size. Depends on the resolution. Larger screens, prefer h20  
" set guifont=Terminus:h14

" show matching brackets, etc, for 1/10th of a second
set showmatch
set matchtime=1

" allow cursor to be positioned one char past end of line
" and apply operations to all of selection including last char
" set selection=exclusive

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Respect modeline in files
set modeline
set modelines=4

" set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:•,precedes:←,extends:→  " Symbols to use for invisible characters
" let &showbreak='↪ '
" Show “invisible” characters
" set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set listchars=tab:▸\ ,trail:·
set list

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Show hidden files in NerdTree  
let NERDTreeShowHidden=1


"let g:NERDTreeWinPos = "right"
"let NERDTreeIgnore = ['\.pyc$', '__pycache__']
"let g:NERDTreeWinSize=35
let g:nerdtree_tabs_open_on_gui_startup=0

" " Setup default folder for NerdTree
" autocmd VimEnter * NERDTree ~/Projects
"

" " Ctrl + left arrow switch to prev tab 
" " (yeah yeah, one file per tab's a bad pratice blah blah blah)
" nnoremap <C-left> :tabp<CR>
" " Ctrl + right arrow switch to next tab
" nnoremap <C-right> :tabn<CR>

" Bind buffers

nnoremap <C-left> :bp<CR>
nnoremap <C-right> :bn<CR>
nnoremap <C-down> :bw<CR>
nnoremap <C-up> :bd<CR>

inoremap <C-left> <C-O>:bp<CR>
inoremap <C-right> <C-O>:bn<CR>
inoremap <C-down> <C-O>:bw<CR>
inoremap <C-up> <C-O>:bd<CR>


if has('clipboard') && !has('gui_running')
  vnoremap <C-c> "+y 
  vnoremap <C-x> "+d 
  vnoremap <C-v> "+p 
  inoremap <C-v> <C-r><C-o>+
endif

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>


colorscheme seattle 
" colorscheme native 
"set mouse=a
set mouse=n
"set paste
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab

" sane tabs for python
" set tabstop=4
" set shiftwidth=4
" set softtabstop=4
"

" just leave it
map qq :exit<CR>

" Identation binding
nmap <C-g> :normal gg=G<CR>

" You can fold everything with zM and unfold everything with zR. zm and zr can 
" be used to get those folds just right

" Folding settings
" set foldmethod=indent   "fold based on indent
set foldmethod=marker   "fold based on marker
set foldnestmax=10      "deepest fold is 10 levels
" set nofoldenable        "dont fold by default
" set foldlevel=1         "this is just what i use

" Maximum width of text that is being inserted.  A longer line will be
" broken after white space to get this width.
" set textwidth=80
set colorcolumn=80


" Default Colors for CursorLine
hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
"hi CursorLine cterm=NONE ctermbg=Black


" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_section=''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '│'
" let g:airline_powerline_fonts = 1
" let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'bubblegum'

" ctrlp
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
      \ 'dir':  'node_modules',
      \ }



" vim-jsx
let g:jsx_ext_required = 0
" let g:jsx_pragma_required = 1



" vim-jsdoc

let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_return = 1
let g:jsdoc_return_type = 1
let g:jsdoc_return_description = 1 
let g:jsdoc_access_descriptions = 1
let g:jsdoc_underscore_private = 1
" Deprecated (?)
" let g:jsdoc_allow_shorthand = 1
let g:jsdoc_enable_es6 = 1

nmap <silent> <leader>l <Plug>(jsdoc)


" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.  
if has("autocmd")  
  augroup myvimrchooks  
    au!  
    autocmd bufwritepost .vimrc source ~/.vimrc  
  augroup END  
endif


" syntastic plugin configuration
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': ['javascript'],
      \ 'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_auto_jump               = 1

"  let g:syntastic_ruby_checkers           = ['rubylint' ] " gem install ruby-lint
"  let g:syntastic_haml_checkers           = ['haml-lint'] " gem install haml-lint
"  let g:syntastic_scss_checkers           = ['scss_lint'] " gem install scss-lint
"  let g:syntastic_css_checkers            = ['csslint'  ] " sudo npm install -g csslint
"  let g:syntastic_css_csslint_args = "--ignore=zero-units"


" vim-javascript

let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"


" Tex fastbuild
"
function! MKTex()
  if (&ft == 'tex')
    let s:dir = expand('%:p:h')
    let s:file = expand('%:p')

    execute '!pdflatex -interaction=nonstopmode -output-directory ' . s:dir .' '. s:file
  else
    echo "For .tex files only."
  endif
endfunction

vnoremap ,m :update<CR>:call MKTex()<CR>:redraw<CR>
noremap ,m :update<CR>:call MKTex()<CR>:redraw<CR>


" Mycomment indent 

let g:mycomment_indent = "^*"


" Goyo

function! s:goyo_enter()
  set noshowmode
  set noshowcmd
  set scrolloff=999
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
endfunction

function! s:goyo_leave()
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:goyo_width=90
let g:goyo_height=90
let g:goyo_linenr=0

" Limelight
function! LimelightToggle()
  if g:limelight_isVisible == 1
    let g:limelight_isVisible = 0
    execute "Limelight!"
  else
    let g:limelight_isVisible = 1
    execute "Limelight"
  endif
endfunction

let g:limelight_isVisible = 0

let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 2

" Map Goyo toggle
nmap <leader>g :Goyo<cr>
nmap <leader>gg :call LimelightToggle()<cr>


" Emmet
"let g:user_emmet_leader_key = '<C-leader>'
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Map leader redo shortcut
noremap <leader>r :redo<CR>


vmap > >gv
vmap < <gv

" Fast operations
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>x :x!<cr>

"Copy and paste from system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

map  <Insert> <Nop>
imap <Insert> <Nop>
vmap <Insert> <Nop>
cmap <Insert> <Nop>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Undotree
nnoremap <leader>u :UndotreeToggle<cr>

" NerdTree
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <C-e> :NERDTreeToggle<cr>

map <Space> <Leader>

imap <F1> <Esc>
map <F6> :setlocal spell! spelllang=en,ru<CR>

if bufwinnr(1)
  nnoremap < <C-W><
  nnoremap > <C-W>>
  nnoremap + <C-W>+
  nnoremap - <C-W>-
endif

" vim:set ft=vim sw=2 ts=2: