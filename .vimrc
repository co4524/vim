set number
set t_Co=256
set nocompatible
set ruler
set showmode
set showcmd
syntax enable
syntax on
set wildmenu
set wildmode=longest:list,full
set autoindent
set smarttab
set shiftwidth=4
set tabstop=4
set showmatch
set matchtime=1
set hlsearch
hi Search cterm=reverse ctermbg=none ctermfg=none
set incsearch
set ignorecase
set smartcase
set scrolloff=5
colorscheme torte
set cursorline
set mouse=a
set history=100
filetype indent on
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i


set laststatus=2
set statusline=[%{expand('%:p')}][%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%{FileSize()}%{IsBinary()}%=%c,%l/%L\ [%3p%%]

function IsBinary()
    if (&binary == 0)
        return ""
    else
        return "[Binary]"
    endif
endfunction

function FileSize()
    let bytes = getfsize(expand("%:p"))
    if bytes <= 0
        return "[Empty]"
    endif
    if bytes < 1024
        return "[" . bytes . "B]"
    elseif bytes < 1048576
        return "[" . (bytes / 1024) . "KB]"
    else
        return "[" . (bytes / 1048576) . "MB]"
    endif
endfunction
set statusline=%#filepath#[%{expand('%:p')}]%#filetype#[%{strlen(&fenc)?&fenc:&enc},\ %{&ff},\ %{strlen(&filetype)?&filetype:'plain'}]%#filesize#%{FileSize()}%{IsBinary()}%=%#position#%c,%l/%L\ [%3p%%]

hi filepath cterm=none ctermbg=238 ctermfg=40
hi filetype cterm=none ctermbg=238 ctermfg=45
hi filesize cterm=none ctermbg=238 ctermfg=225
hi position cterm=none ctermbg=238 ctermfg=228
