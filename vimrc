"" Basic Settings {{{{
""

syntax enable

set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backupdir=~/tmp,/var/tmp,/tmp/
set clipboard^=unnamed,unnamedplus
set cmdheight=1
set completeopt=menu,preview
set cursorline
set diffopt=vertical
set directory=~/tmp,/var/tmp,/tmp/
set encoding=utf-8
set expandtab
set exrc
set foldmethod=marker
set gdefault
set hidden
set hlsearch
set ignorecase
set incsearch
set modelines=0
set nobackup
set nocompatible
set noerrorbells
set nojoinspaces
set noswapfile
set nowrap
set nowritebackup
set number
set numberwidth=5
set re=1
set ruler
set scrolloff=3
set secure
set shell=bash
set shiftround
set shiftwidth=2
set showcmd
set showmatch
set showmode
set showtabline=2
set signcolumn=number
set smartcase
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set t_vb=
set tabstop=2
set tags=tags
set termencoding=utf-8
set title
set ttyfast
set updatetime=200
set visualbell

set list
set listchars=""
set listchars=tab:\ \ 
set listchars+=extends:>
set listchars+=nbsp:_
set listchars+=precedes:<
set listchars+=trail:·

set wildmenu
set wildmode=longest,list:longest
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.zst
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*
set wildignore+=*/tmp/*,*.so,*/coverage/*

if executable('ag')
  set grepprg=ag\ --vimgrep\ $*
endif

runtime macros/matchit.vim
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" }}}}

"" General Mappings (Normal, Visual, Operator-pending) {{{{
""

let mapleader = ","
let localleader = "\\"

inoremap jk <esc>
nnoremap ; :
nnoremap <C-e> :Buffers<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>k<C-w>_
nnoremap <C-l> <C-w>l
nnoremap <C-n> :GFiles<cr>
nnoremap <C-p> :Files<cr>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>fef :normal! gg=G``<CR>
nnoremap <leader>gb :Git blame -w -M<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>h <C-w>s<C-w>l
nnoremap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <leader>n :NERDTreeFind<cr>
nnoremap <leader>p "+p
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <localleader>F :Ag<space>
nnoremap <localleader>f :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <localleader>n :NERDTreeClose<cr>
nnoremap <silent> <leader>cd :lcd %:h<CR>
nnoremap <space> za
nnoremap <tab> %
nnoremap H ^
nnoremap L $
noremap <Down> gj
noremap <Up> gk
noremap <leader>= <C-w>=
vnoremap / /\v
nnoremap <localleader>F :Ag<space>
vnoremap <space> zf
vnoremap <tab> %

nmap <leader><tab> <plug>(fzf-maps-n)
omap <leader><tab> <plug>(fzf-maps-o)
xmap <leader><tab> <plug>(fzf-maps-x)

imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-l> <plug>(fzf-complete-line)
imap <c-x><c-n> <plug>(fzf-complete-buffer-line)

" }}}}

"" Plugin Configuration {{{{
""

let g:fzf_tags_command = 'ctags -R'

" }}}}
