" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'powerline/powerline'

Plug 'morhetz/gruvbox'

Plug 'pangloss/vim-javascript'

Plug 'Valloric/YouCompleteMe'

Plug 'ternjs/tern_for_vim'

Plug 'mxw/vim-jsx'

Plug 'vim-syntastic/syntastic'

Plug 'vim-airline/vim-airline'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-fugitive'

Plug 'jiangmiao/auto-pairs'

Plug 'vim-airline/vim-airline-themes'

Plug 'herrbischoff/cobalt2.vim'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

syntax on
colorscheme gruvbox
set number

map :evlic :0r ~/.vim/.evive-license.txt

set background=dark

let g:jsx_ext_required = 0
set t_ut=
let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set autochdir

set backspace=indent,eol,start

autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:syntastic_loc_list_height = 5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:jsx_ext_required = 0
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_min_count = 2

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

if has('gui_running')
  set guifont=Consolas:h12
endif
