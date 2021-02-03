call plug#begin('~/.config/nvim/plugged/')

Plug 'mitermayer/vim-prettier'
Plug 'jiangmiao/auto-pairs' "Autocomplete brackets. 
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive' "Git tools
Plug 'metakirby5/codi.vim'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} "Nerdtree
Plug 'neoclide/coc.nvim', {'branch': 'release'} "autocompletion
Plug 'vimwiki/vimwiki'
Plug 'neoclide/coc-python'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ap/vim-css-color'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons' "always load at end

call plug#end()

nnoremap <SPACE> <Nop>
map <Space> <Leader>
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

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>

syntax on
let g:onedark_hide_endofbuffer = 1
let g:ondedark_terminal_italics = 1
let g:lightline = {
\'colorscheme':'onedark',
\}
colorscheme onedark
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
set ai
set number
set nu

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

