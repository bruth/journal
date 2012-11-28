set columns=90
set lines=20

" Turn off error bells
set noerrorbells

" Show current position
set cursorline

" Soft wrap
set wrap
set linebreak
set nolist

set nuw=3

set linespace=3
set numberwidth=3

" Search
set nohls
set incsearch
set showmatch

" -[ indentation ]-
set autoindent
set smartindent

" Shift width in normal mode
set shiftwidth=4

" Remove N spaces at a time
set softtabstop=4

" Width of a tab character
set tabstop=4

" Use spaces instead of tabs
set expandtab

" command mode
syntax on
set t_Co=256
colorscheme Tomorrow

" -[ FileTypes ]-
filetype plugin indent on

" vimcasts.org tidying whitespace
function! Preserve(command)
    " Save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nmap _$ :call Preserve("%s/\\s\\+$//e")<cr>
nmap _= :call Preserve("normal gg=G")<cr>

" GUI
if has ("gui")
    set guioptions=ce
    set mousehide
    if has ("macunix")
        set guifont=PragmataPro:h14
    else
        set guifont=PragmataPro\ 12
    endif
    set guicursor=a:blinkon0,ci-i:hor10
endif

startinsert
