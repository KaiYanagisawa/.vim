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

colorscheme jellybeans
syntax on

" plugins-list
call plug#begin()
	Plug 'https://github.com/preservim/nerdtree'
	" Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/preservim/vim-indent-guides'
	Plug 'https://github.com/ctrlpvim/ctrlp.vim'
	Plug 'https://github.com/tomtom/tcomment_vim'
call plug#end()

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1

