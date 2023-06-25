set number
set smartindent
set hidden
set virtualedit=block
set backspace=indent,eol,start
set ignorecase
set smartcase

" indent width
set tabstop=4
set shiftwidth=4

" theme
colorscheme jellybeans
syntax on

" File type detection is On.
filetype on

augroup vimrc
    " Remove all autocommands in this group
    autocmd!

    " key execution
	autocmd FileType cpp         nnoremap <buffer> run :!g++ -std=c++17 % -o %< && ./%<<CR>
    autocmd FileType java        nnoremap <buffer> run :!javac -encoding UTF-8 % && java %<<CR>
    autocmd FileType javascript  nnoremap <buffer> run :!node %<CR>
    autocmd FileType php         nnoremap <buffer> run :!php %<CR>
    autocmd FileType python      nnoremap <buffer> run :!python %<CR>
    autocmd FileType ruby        nnoremap <buffer> run :!ruby %<CR>
    autocmd FileType go          nnoremap <buffer> run :!go run %<CR>
    autocmd FileType groovy      nnoremap <buffer> run :!groovy %<CR>
    autocmd FileType vim         nnoremap <buffer> run :source %<CR>
    autocmd FileType hs          nnoremap <buffer> run :!runghc %<CR>e
	autocmd FileType pl          nnoremap <buffer> run :!perl %<CR>e

augroup END

" plugin
call plug#begin()
	Plug 'https://github.com/preservim/nerdtree'
	" Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/preservim/vim-indent-guides'
	Plug 'https://github.com/ctrlpvim/ctrlp.vim'
	Plug 'https://github.com/tomtom/tcomment_vim'
	Plug 'https://github.com/Shougo/unite.vim'
call plug#end()

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

" unite
nnoremap <silent> un :<C-u>Unite buffer<CR>
nnoremap <silent> unf :<C-u>Unite file<CR>
nnoremap <silent> ufr :<C-u>Unite file_rec<CR>
nnoremap <silent> ub :<C-u>Unite bookmark<CR>
nnoremap <silent> umru :<C-u>Unite file_mru<CR>
nnoremap <silent> ur :<C-u>Unite -buffer-name=register register<CR>
