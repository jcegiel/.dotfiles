"General
"execute pathogen#infect()
set ts=2
set sw=2
set et
set mouse=a
set backspace=2
set number
set encoding=utf-8
set autoread
set hlsearch
"set colorcolumn=81

colorscheme elflord

syntax on
filetype on

"Setting  autoindening for all filetypes
set autoindent
autocmd FileType html,xml,php setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2

"Shourtcuts
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>


"Filetype configuration
au BufNewFile,BufRead *.jst set filetype=html
au BufNewFile,BufRead *.scss set filetype=css

"Show tabs and trailing spaces
set list listchars=tab:→\ ,trail:·

"Allow the use of 256 colors in the terminal
set t_Co=256

"Shift+Tab unindents a line
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

"Remove trailing spaces when saving a file
autocmd BufWritePre * :%s/\s\+$//e

"Fix backspace not working
set backspace=indent,eol,start

"Statusline
set laststatus=2
set statusline=
set statusline+=\[%n]                                  "buffernr
set statusline+=\[%<%F]\                               "File+path
set statusline+=\%y\                                   "FileType
set statusline+=%=
set statusline+=\[%{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=\%{(&bomb?\",BOM\":\"\")}]\            "Encoding2
set statusline+=\[%{&ff}]\                             "FileFormat
set statusline+=\[col:%03c]\                           "Colnr

hi StatusLine ctermbg=black ctermfg=gray

"Intellisense
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags            "html
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS  "js
autocmd FileType css set omnifunc=csscomplete#CompleteCSS               "css
autocmd FileType php set omnifunc=phpcomplete#CompletePHP               "php

