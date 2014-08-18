" Auto check and install vundle {
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
    if !filereadable(vundle_readme)
      echo "Installing Vundle.."
      echo ""
      silent !mkdir -p ~/.vim/bundle
      silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/Vundle.vim
      let iCanHazVundle=0
    endif
" Auto check and install vundle }


" Vundle Setup {
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'pangloss/vim-javascript'
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'scrooloose/syntastic'
    Plugin 'majutsushi/tagbar'
    Plugin 'vim-scripts/cscope.vim'


    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
" Vundle Setup }


"basic setup {
    set ai
    set ruler
    set bs=2
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set cursorline
    set nocompatible
    set background=dark
    set modeline
    set showcmd
    set number
    nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
    nnoremap <F3> :set nopaste!<CR>
    " auto reload vimrc when editing it
    autocmd! bufwritepost .vimrc source ~/.vimrc
    syntax on " syntax highlight
    set hlsearch " search highlighting
    filetype plugin indent on
    autocmd BufNewFile,BufRead *.cflow setf cflow
    " cursorline highlight
    highlight Cursorline ctermfg=none ctermbg=darkblue cterm=none
"basic setup }


" Makefile {
    autocmd BufRead,BufNewFile ?akefile* set noexpandtab
" Makefile }


" status line {
    set laststatus=2
    set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
    "set statusline+=\ \ \ [%{&ff}/%Y]
    set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
    set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
    function! HasPaste()
        if &paste
            return '[PASTE]'
        else
            return ''
        endif
    endfunction

    function! CurDir()
        let curdir = substitute(getcwd(), $HOME, "~", "")
        return curdir
    endfunction
    "set statusline=%<%f\ %m%=\ %h%r\ %-19([%p%%]\ %3l,%02c%03V%)%y	"statusline format
" status line }


" for c/cpp {
    autocmd FileType c,cpp setlocal cindent fdm=syntax
" for c/cpp }


" for python {
    autocmd FileType python setlocal et sta sw=4 sts=4
    "fold
    autocmd FileType python setlocal foldmethod=indent
    set foldlevel=99
" for python }


" syntastic {
    " for pylint
    let g:syntastic_python_checkers = ['pylint']
    let g:syntastic_python_pylint_args="--max-line-length=255"

    " for flake8
    "let g:syntastic_python_checker = 'flake8'
    "let g:syntastic_python_checker_args="--ignore=E501"
" syntastic }


" tagbar {
    nmap <F8> :TagbarToggle<CR>
" tagbar }


