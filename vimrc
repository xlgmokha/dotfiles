"" Basic Settings {{{{
""

syntax enable

set autoindent
set autoread
set autowrite
set backspace=indent,eol,start
set backupdir=/tmp//
set clipboard^=unnamed,unnamedplus
set cmdheight=2
set cursorline
set directory=/tmp//
set encoding=utf-8
set expandtab
set exrc
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
set ruler
set scrolloff=3
set secure
set shiftround
set shiftwidth=2
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=2
set splitbelow
set splitright
set t_Co=256
set t_vb=
set tabstop=2
set tags=./.git/tags,./tmp/tags,./tags,tags,._tags
set title
set ttyfast
set visualbell

set list
set listchars+=extends:>
set listchars+=nbsp:_
set listchars+=precedes:<
set listchars+=trail:·
set listchars=""
set listchars=tab:\ \

set wildmenu
set wildmode=longest,list:longest
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.zst
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*
set wildignore+=*.swp,*~,._*
set wildignore+=*/tmp/*,*.so,*/coverage/*

" }}}}

"" File type-specific settings {{{{
""

filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)

augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}}

"" General Mappings (Normal, Visual, Operator-pending) {{{{
""

let mapleader = ","
let localleader = "\\"

inoremap jk <esc>
nnoremap / /\v
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
nnoremap <leader>h <C-w>s<C-w>l
nnoremap <leader>hs :set hlsearch! hlsearch?<CR>
nnoremap <leader>n :NERDTreeFind<cr>
nnoremap <leader>p "+p
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>v <C-w>v<C-w>l
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
vnoremap <space> zf
vnoremap <tab> %

" }}}}
