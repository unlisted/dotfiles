set exrc
set secure

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

set number
set listchars=space:.,eol:$,tab:>-,trail:~,extends:>,precedes:<

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'    "plugin manager
Plugin 'Valloric/YouCompleteMe'  "completer/code search
Plugin 'scrooloose/nerdtree'     "filesystem tool
Plugin 'flazz/vim-colorschemes'  "colors
Plugin 'rhysd/vim-clang-format'  "clang formatter
Plugin 'tpope/vim-fugitive'      "git tools
Plugin 'rbgrouleff/bclose.vim'   "close a buffer without closing window
Plugin 'gregsexton/gitv'         "gitk for vim 
Plugin 'airblade/vim-gitgutter'  "show git diff in gutter
Plugin 'fatih/vim-go'            "go plugin
Plugin 'tmhedberg/SimpylFold'    " code folding

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"set background=dark
"let g:solarized_termcolors=256
syntax enable
colorscheme codeblocks_dark

set listchars=space:.,eol:$,tab:>-,trail:~,extends:>,precedes:<

"
"nnoremap <F4> :vsp<CR>
"nnoremap <F5> :close<CR>
nnoremap <leader>so :so ~/.gvimrc<CR>
nnoremap <leader>q  :bw<CR>
nnoremap <leader>ws :set list!<CR>
nnoremap <leader>rt :retab<CR>
nnoremap <leader>cf :ClangFormat<CR>
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <leader>bc :Bclose<CR>
nnoremap <leader>sp :setlocal spell! spelllang=en_us<CR>
nnoremap <leader>nt :NERDTree ~/work<CR>
nnoremap <leader>js :%!python -m json.tool<CR>

" window nav
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
