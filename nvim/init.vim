call plug#begin('~/.config/nvim/plugged/')

Plug 'mitermayer/vim-prettier'
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets. 
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim', { 'dir':'~/fzf', 'do':'./install --all'}
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive' "Git tools
Plug 'metakirby5/codi.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion
Plug 'neoclide/coc-python'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons' "always load at end

call plug#end()

set backup
set backupdir=/tmp

set timeoutlen=1000        " speed vim up
set ttimeoutlen=0          " https://stackoverflow.com/questions/37644682/why-is-vim-so-slow/37645334
set ttyfast                "Rendering
set tw=500
set termguicolors
set clipboard=unnamedplus

nnoremap <C-p> :Files<Cr>
map <C-n> :NERDTreeToggle<CR> 
let NERDTreeQuitOnOpen = 1 "closes NerdTree when opening a file

syntax on
let g:onedark_hide_endofbuffer = 1
let g:ondedark_terminal_italics = 1
let g:lightline = {
\'colorscheme':'onedark',
\}
colorscheme onedark

set ai
set number
set nu

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

