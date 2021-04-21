" Vundle package manager stuff (must be at top) :
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

" Plugins below :
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'nelsyeung/twig.vim'
Plugin 'gorodinskiy/vim-coloresque'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end of Vundle stuff

" Folding method 
set foldmethod=indent

" Assign , to Emmet HTML generator
let g:user_emmet_leader_key=','

" active indent guides by default
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" end of indent stuff

"NerdTree mapping on Ctrl+O
map <C-o> :NERDTreeToggle<CR>


" lightline related stuff
set laststatus=2
set noshowmode
" end of lightline

"set number relativenumber
set number
syntax on

set mouse=a

" NERDTREE show dotfiles
let NERDTreeShowHidden=1

colorscheme koehler

