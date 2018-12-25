"----encording
set encoding=utf-8
scriptencoding utf-8

"----filetype
filetype on
augroup FileTypeCheck
    autocmd!
    autocmd BufRead,BufNewFile * echo &filetype
augroup END
syntax enable

"----バックアップ
set nobackup
set writebackup
set backupdir=.
autocmd BufWritePre * let &bex = '.bak' . strftime("%Y%m%d%H%M%S")

"----インターフェース
set number
set ruler
set title
set laststatus=2

"----インデント
set list
set autoindent
set nosmartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set listchars=tab:>-,trail:-
augroup FileTypeIndent
    autocmd!
    " ts=tabstop, sw=shiftwidth, sts=softtabstop, et=expandtab
    autocmd FileType vim      setlocal ts=4 sw=4 sts=4 et
    autocmd FileType sh       setlocal ts=4 sw=2 sts=2 et
    autocmd FileType text     setlocal ts=8 sw=8 sts=0
    autocmd FileType markdown setlocal ts=4 sw=4 sts=0
    autocmd FileType xml      setlocal ts=4 sw=2 sts=2 et
    autocmd FileType c        setlocal ts=4 sw=8 sts=0
    autocmd FileType cpp      setlocal ts=4 sw=4 sts=0
    autocmd FileType python   setlocal ts=4 sw=4 sts=4 et
    autocmd FileType make     setlocal ts=4 sw=4 sts=0
    autocmd FileType cmake    setlocal ts=4 sw=2 sts=2 et
augroup END

"----カーソル
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set scrolloff=3
