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
set splitbelow
set termwinsize=10x0

"split navigations 
nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 

"ctrl + w to save
nnoremap <silent><c-w> :<c-u>wq<cr>




"---------------PLUGINS------------------


call plug#begin('~/.vim/plugged')
 Plug 'Yggdroot/indentLine'
 Plug 'vim-scripts/indentpython'
 Plug 'tmhedberg/SimpylFold'
 Plug 'morhetz/gruvbox'
 Plug 'ap/vim-css-color' 
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

colorscheme monokai 
"hi Normal ctermbg=259
let airline_theme='fairyfloss' 
let g:airline_powerline_fonts = 1
hi Pmenu ctermfg=0 ctermbg=236 guifg=#ffffff guibg=#282c34
"set background=dark
let g:python_highlight_all = 1




set completeopt-=preview

"map ii inplace of Esc 
"imap ii <Esc>

if executable('rg')
    let g:rg_derive_root= 'true'
endif
let g:netrw_banner_split=2
let g:netrw_banner= 0

"nerdtree toggles
nnoremap <leader>p :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <S-p> :NERDTreeToggle<CR>
nnoremap <S-f> :NERDTreeFind<CR>



nnoremap  <C-n> :tabnew<CR>

inoremap <S-Space> <Left>
"python auto suggestions for ycmp

let g:ycm_semantic_triggers = {
    \   'python': [ 're!\w{2}' ]
        \ }
    
"hide preview 
let g:netrw_banner = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


let NERDTreeShowBookmarks=1


autocmd FileType python nnoremap <buffer> <F9> :update<bar>!python %<CR>


" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType python map <buffer> <F9> :w<CR>:term python3 "%"<CR>
autocmd FileType c map <buffer> <F8> :w<CR>:term gcc "%"<CR>


fu  GetTerm()
    terminal
    wincmd x
    res 40
endfu
