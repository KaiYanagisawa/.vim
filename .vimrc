set number
set smartindent
set hidden
set virtualedit=block
set backspace=indent,eol,start
set ignorecase
set smartcase
set hlsearch

" indent width
set tabstop=4
set shiftwidth=4
set expandtab

" theme
colorscheme jellybeans
syntax on

" cursor style 
if has('vim_starting')
    " Insert mode cursor type
    let &t_SI .= "\e[6 q"
    " Normal mode cursor type
    let &t_EI .= "\e[1 q"
    " Replace mode cursor type
    let &t_SR .= "\e[3 q"
endif

" File type detection is On.
filetype on

augroup vimrc
    " Remove all autocommands in this group
    autocmd!

    " key execution
	autocmd FileType cpp         nnoremap <buffer> rr :!g++ -std=c++17 % -o %< && ./%<<CR>
    autocmd FileType java        nnoremap <buffer> rr :!javac -encodirg UTF-8 % && java %<<CR>
    autocmd FileType javascript  nnoremap <buffer> rr :!rode %<CR>
    autocmd FileType php         nnoremap <buffer> rr :!php %<CR>
    autocmd FileType python      nnoremap <buffer> rr :!python3 %<CR>
    autocmd FileType ruby        nnoremap <buffer> rr :!ruby %<CR>
    autocmd FileType go          nnoremap <buffer> rr :!go run %<CR>
    autocmd FileType groovy      nnoremap <buffer> rr :!groovy %<CR>
    autocmd FileType vim         nnoremap <buffer> rr :source %<CR>
    autocmd FileType haskell     nnoremap <buffer> rr :!runghc %<CR>
	autocmd FileType perl        nnoremap <buffer> rr :!perl %<CR>

augroup END

" plugin
call plug#begin()
	Plug 'https://github.com/preservim/nerdtree'
	" Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/preservim/vim-indent-guides'
	Plug 'https://github.com/ctrlpvim/ctrlp.vim'
	Plug 'https://github.com/tomtom/tcomment_vim'
	Plug 'https://github.com/Shougo/unite.vim'
    Plug 'https://github.com/airblade/vim-gitgutter'
call plug#end()

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTreeFind<CR>

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" unite
nnoremap <silent> un :<C-u>Unite buffer<CR>
nnoremap <silent> unf :<C-u>Unite file<CR>
nnoremap <silent> ufr :<C-u>Unite file_rec<CR>
nnoremap <silent> ub :<C-u>Unite bookmark<CR>
nnoremap <silent> umru :<C-u>Unite file_mru<CR>
nnoremap <silent> ur :<C-u>Unite -buffer-name=register register<CR>

" keymap
inoremap { {}<LEFT> 
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
noremap <C-j> <ESC>
inoremap <C-j> <ESC>
nnoremap <C-j><C-n> :nohlsearch<CR>
noremap ss ^
noremap ;; $

