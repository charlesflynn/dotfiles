set nocompatible
set t_Co=16                                                
silent! call pathogen#infect()

if has('syntax')
    syntax enable
    set background=dark
    silent! colorscheme solarized
endif

if has('autocmd')
    filetype indent plugin on
endif


set autoindent
set autoread
set backspace=indent,eol,start
set expandtab
set history=1000
set ignorecase
set listchars=tab:>-,trail:·,eol:$
set nrformats-=octal
set number
set scrolloff=3
set shiftround
set shiftwidth=4
set shortmess+=I
set sidescroll=1
set sidescrolloff=3
set smartcase
set smarttab
set softtabstop=4
set tabstop=4
set visualbell t_vb=


if !strlen($SUDO_USER) && has('unix')
    set backup
    set backupdir^=~/.vim/tmp/backup//
    if !isdirectory($HOME . '/.vim/tmp/backup') && exists('*mkdir')
        call mkdir($HOME . '/.vim/tmp/backup', 'p', 0700)
    endif

    set swapfile
    set directory^=~/.vim/tmp/swap//
    if !isdirectory($HOME . '/.vim/tmp/swap') && exists('*mkdir')
        call mkdir($HOME . '/.vim/tmp/swap', 'p', 0700)
    endif

    if has('persistent_undo')
        set undofile
        set undodir^=~/.vim/tmp/undo//
        if !isdirectory($HOME . '/.vim/tmp/undo') && exists('*mkdir')
            call mkdir($HOME . '/.vim/tmp/undo', 'p', 0700)
        endif
    endif
else
    set nobackup
    set noswapfile
endif


if has('cmdline_info')
    set ruler
    set showcmd
    set showmode
endif


if exists('+colorcolumn')
    set colorcolumn=80
endif


if has('extra_search')
    set hlsearch
    set incsearch
endif


if has('linebreak')
    set linebreak
    set showbreak=...
endif


if has('multi_byte')
    set encoding=utf-8
endif


if has('virtualedit')
    set virtualedit+=block
endif


if has('wildmenu')
    set wildmenu
    set wildmode=longest:list
    if has('wildignore')
        set wildignore+=*.a,*.o,*.pyc
        set wildignore+=.git,.hg,.svn
        set wildignore+=*~,*.swp,*.tmp
    endif
endif


if has('windows')
    set laststatus=2
    set splitbelow
    if has('vertsplit')
        set splitright
    endif
endif


if has('autocmd')
    autocmd FileType help wincmd L
    autocmd Filetype python set ts=4 shiftwidth=4 expandtab
    autocmd InsertEnter * set cursorline
    autocmd InsertLeave * set nocursorline
endif


silent! runtime macros/matchit.vim


if filereadable(glob('~/.vimrc.local'))
    source ~/.vimrc.local
endif
