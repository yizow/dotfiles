set nocp
set hidden
syntax on
set lazyredraw
set showmode
set wildmenu

set tabstop=2
set shiftwidth=2
set expandtab

set number
set relativenumber
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-sensible'
Plugin 'agude/vim-eldar'
Plugin 'rking/ag.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" need to manually run in vim: ":call mkdp#util#install()" after following
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()
if has('syntax')
    syntax enable             " Turn on syntax highlighting
    silent! colorscheme eldar " Custom color scheme
endif
highlight CursorLineNr ctermfg=161
highlight LineNr ctermfg=147
filetype plugin indent on

" Window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" markdown-preview.nvim
let g:mkdp_browser = 'firefox'
