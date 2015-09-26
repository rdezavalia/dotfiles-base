

" <vundle>
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'jamessan/vim-gnupg'

" </vundle>
"
filetype indent on
set t_Co=256
colorscheme solarized
set background=dark
syn on
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
"highlight ColorColumn ctermbg=233

set history=1000
set undolevels=1000

" Reload .vimrc after save
au BufLeave $MYVIMRC :source $MYVIMRC

" <vim-airline>
set laststatus=2
let g:airline_theme             = 'solarized'
let g:airlint_powerline_fonts	= 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" </vim-airline>


" marc trailing spaces as errors
match ErrorMsg '\s\+$'

" Removes trailing spaces
function Rts()
    %s/\s\+$//e
endfunction

" automatically remove rts before save
autocmd FileWritePre    * :call Rts()
autocmd FileAppendPre   * :call Rts()
autocmd FilterWritePre  * :call Rts()
autocmd BufWritePre     * :call Rts()

" python tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

