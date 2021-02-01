" --------------------------------------------------
"       __   _(_)  _ __ ___    _ __ ___
"       \ \ / / | | '_ ` _ \  | '__/ __|
"        \ V /| | | | | | | | | | | (__
"         \_/ |_| |_| |_| |_| |_|  \___|   
"
"---------------------------------------------------

set encoding=utf-8
set termencoding=utf-8
set t_Co=256
syntax enable
scriptencoding=utf-8

"---------------------------------------------------

set laststatus=2
set autoindent
set expandtab
set number relativenumber
set noshowmode
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set noerrorbells
set tabstop=4 softtabstop=4
set smartindent
set nowrap
set smarttab
set shiftwidth=4
set tabstop=4
set wildmenu




"split navigations 
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 



"---------------PLUGINS------------------


call plug#begin('~/.vim/plugged')
 Plug 'tmhedberg/SimpylFold'
 Plug 'morhetz/gruvbox'
 Plug 'danilo-augusto/vim-afterglow'
 Plug 'Raimondi/delimitMate'
 Plug 'jmcantrell/vim-virtualenv' 
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'ap/vim-css-color'
 Plug 'Valloric/YouCompleteMe'
 Plug 'preservim/nerdtree'
 call plug#end()

"-----------------------------------------

colorscheme afterglow
hi Normal ctermbg=none
let airline_theme='fairyfloss' 
let g:airline_powerline_fonts = 1
hi Pmenu ctermfg=0 ctermbg=8 guifg=#ffffff guibg=#000005
"set background=dark
let g:python_highlight_all = 1



"map ii inplace of Esc 
imap ii <Esc>

if executable('rg')
    let g:rg_derive_root= 'true'
endif
let g:netrw_banner_split=2
let g:netrw_banner= 0

"nerdtree toggles
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



"python auto suggestions for ycmp

let g:ycm_semantic_triggers = {
    \   'python': [ 're!\w{2}' ]
        \ }

"hide preview 
let g:netrw_banner = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>


