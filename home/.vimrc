set nocompatible " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 NeoBundleFetch 'Shougo/neobundle.vim'

 " Recommended to install
 " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
 NeoBundle 'Shougo/vimproc'

" Utility Bundles
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'vim-scripts/tlib'

" My Bundles
NeoBundle 'bling/vim-airline'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'lilydjwg/colorizer'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tobyS/pdv' " PHPDocs
NeoBundle 'depuracao/vim-rdoc'

" NeoBundle Languages
NeoBundle 'elzr/vim-json'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-haml'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'vim-scripts/yaml.vim'
NeoBundle 'donnut/vim-php54-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'beyondwords/vim-twig'
NeoBundle 'nono/vim-handlebars'
NeoBundle 'mutewinter/nginx.vim'
NeoBundle 'skwp/vim-rspec'
NeoBundle 'xsbeats/vim-blade'
NeoBundle 'jtratner/vim-flavored-markdown'

filetype plugin indent on " Required for NeoBundle

" Boolean Settings
:syntax on
set backup " backup files
if &backupdir =~# '^\.,'
  let &backupdir = '/Usrs/mitch/.vim/backup,' . &backupdir
endif
set swapfile " .swp files
if &directory =~# '^\.,'
  let &directory = '/Usrs/mitch/.vim/swap,' . &directory
endif
set hlsearch " Highlight search
set number " Line numbers
set showmatch " show search matches as you type
set smartcase " Smart search (upper case sensitive)
set ignorecase " Ignore case sensitivity
set hidden " allow for hidden buffers unsaved
set showcmd " Show the command your typing
set autoread " Auto-reload buffers when file changed on disk
set gdefault " set :s///g flag by default on
set linebreak " line break on whole words not halfway through
set cursorline " Highlight current line
set autoindent " next line will auto indent
set smartindent

let mapleader = "`" " Remap leader key
let &t_Co=256
let g:ctrlp_extensions = ['funky']

set background=dark
set ts=2
set softtabstop=2
set shiftwidth=2
set shiftround " round > and < to closest multiple of shiftwidth
set scrolloff=3 "Horizontal scroll offset
set showbreak=>\  " Show a > on line breaks
set backspace=indent,eol,start " Proper backspacing
set foldmethod=marker
set foldmarker={{{,}}}
set timeout " Fix slow O inserts (all three)
set timeoutlen=1000
set ttimeoutlen=100


" Insert remaps
inoremap jj <Esc>
" Use tab to scroll through buffer
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" inoremap <s-tab> <c-p>

" Normal remaps
" True Regex
nnoremap / /\v
nnoremap ? ?\v
" Clear the search buffer on hitting return
nnoremap <CR> :nohlsearch<cr>
" Ctrl P Function search
nnoremap <Leader>r :CtrlPFunky<Cr>
" Remap arrow keys to navigate buffer
nnoremap <left> :bprev<cr>
nnoremap <right> :bnext<cr>
nnoremap <down> :buffer #<cr>
nnoremap <up> :buffers<cr>:buffer<space>
nnoremap <C-k><C-b> :NERDTreeToggle<CR>
" Remap Y to act like C and D (to end of line)
nnoremap Y y$
nnoremap <tab> >>
nnoremap <s-tab> <<

" Visual remap
vnoremap / /\v
vnoremap ? ?\v
vnoremap <tab> >
vnoremap <s-tab> <
  
colorscheme railscasts

" Set js files to javascript and jquery syntax
au BufRead,BufNewFile *.js set ft=javascript syntax=jquery
" On load auto indent HTML
autocmd BufRead,BufWritePre *.html normal gg=G

augroup vimscript
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup markdown
	au!
	au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
" Functions
" Tab means space or buffer search 
 " function! InsertTabWrapper()
 "  let col = col(".") - 1 " . means current line
 "  if !col || getline(".")[col - 1] !~ '\k' " If !col == 0 it is false - or the character before the current character doesn't match a keyword
 "    return "\<tab>"
 "  else
 "    return "\<c-n>"
 " endfunction

" Miss spellings
inoreabbrev teh the
inoreabbrev liek like
inoreabbrev ahve have

" Abbreviations
cnoreabbrev Wq wq
cnoreabbrev W w
cnoreabbrev Q q
