call plug#begin('~/.vim/plugged')

"Colour schemes"
Plug 'sainnhe/sonokai'
Plug 'crusoexia/vim-monokai'

call plug#end()

colorscheme monokai

set number relativenumber

"Indentation settings"
set expandtab "Turns tabs into spaces"
set tabstop=4 "Number of visual spaces per <TAB>"
set softtabstop=4 "Number of spaces inserted when you hit <TAB>"
set shiftwidth=4
set smartindent "Remembers previous indent when creating new lines"

set showmatch "Highlights matching parentheses"

"Search settings"
set ignorecase
set smartcase
nnoremap <cr> :noh<cr>

"Line wrapping settings"
set wrap linebreak nolist "Enables soft wrapping at the edge of the screen"
autocmd Filetype markdown set textwidth=100

autocmd Filetype markdown nnoremap o o<esc>i- 
autocmd Filetype html,css set tabstop=2 softtabstop=2 shiftwidth=2

"Current line highlighting"
hi CursorLine cterm=None ctermbg=0
hi CursorLineNR cterm=bold ctermbg=0
set cursorline

nnoremap ; :
nnoremap ;; ;
inoremap kj <esc>

"Automatically add closing ( { [ ' " `
inoremap {<cr> {<cr><bs>}<esc>ko
inoremap { {}<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap ` ``<esc>i
inoremap } <esc>la
inoremap ) <esc>la
inoremap ] <esc>la
