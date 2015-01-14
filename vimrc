"VUNDLE CONFIG : Page 51"
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" keep plugin between begin() & end()
call vundle#begin()

" required
Plugin 'gmarik/Vundle.vim'

" optional
"Vim Plugin
Plugin 'tpope/vim-fugitive' 
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'powerline/powerline'
Plugin 'adobe-fonts/source-code-pro'
"Python Plugin
Plugin 'kennethreitz/requests'
Plugin 'ivanov/vim-ipython'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'JinnLynn/beautifulsoup'
Plugin 'mitsuhiko/flask'
Plugin 'pypa/pip'
Plugin 'zzzeek/sqlalchemy'
Plugin 'irungentoo/toxcore'
Plugin 'calvinchengx/python-mock'
Plugin 'alfredodeza/pytest.vim'
Plugin 'coagulant/coveralls-python'
Plugin 'geordanr/pylint'
Plugin 'jcrocholl/pep8'
Plugin 'pydata/pandas'
Plugin 'gurgeh/selfspy'
Plugin 'inducer/pudb'
Plugin 'cython/cython'
Plugin 'rfk/pypy'
Plugin 'jakubroztocil/httpie'
Plugin 'nvie/vim-flake8'
Plugin 'szw/vim-ctrlspace'
Plugin 'godlygeek/tabular'

call vundle#end()
filetype plugin indent on
"END VUNDLE CONFIG"

"CtrlSpace Config
set hidden
hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE

"Tabular Config
let mapleader = ","
nmap <Leader>t :Tabularize /:\zs<CR>
vmap <Leader>t :Tabularize /:\zs<CR>


"Vastor Config
"Enter = newline in navig mode"
nmap <CR> O<Esc>

"Indentation config
set softtabstop=4
set shiftwidth=4
set expandtab

"Text Folding config
set foldmethod=indent
set foldnestmax=2
set foldignore=
nnoremap <space> za
vnoremap <space> zf

"Text column config
set colorcolumn=80

"Numberline config
set number
highlight LineNr ctermbg=white ctermfg=black cterm=bold

"Python-environment config
autocmd Filetype python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
