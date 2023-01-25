"https://dougblack.io/words/a-good-vimrc.html
"https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"https://www.shortcutfoo.com/blog/top-50-vim-configuration-options

set number relativenumber

set background=dark

filetype plugin indent on

syntax on

"Indentation settings"
set expandtab "Turns tabs into spaces"
set tabstop=4 "Number of visual spaces per <TAB>"
set softtabstop=4 "Number of spaces inserted when you hit <TAB>"
set shiftwidth=4
set smartindent "Remembers previous indent when creating new lines"
set autoindent

set showmatch "Highlights matching parentheses"

"Search settings"
set ignorecase
set smartcase
set incsearch

" Setting cursor shape in different modes
" &t_SI refers to Insert mode
" &t_SR refers to Replace mode
" &t_EI refers to Normal mode
let &t_SI = "\e[6 q"
let &t_SR = "\e[4 q"
let &t_EI = "\e[2 q"

"Line wrapping settings"
set wrap linebreak nolist "Enables soft wrapping at the edge of the screen"
autocmd Filetype markdown set textwidth=100

"Current line highlighting
"https://www.twilio.com/blog/5-quality-of-life-vim-tricks-for-your-vimrc
hi CursorLine cterm=NONE ctermbg=0
hi CursorLineNR cterm=bold ctermbg=0
set cursorline

inoremap kj <esc>

"Automatically add closing ( { [ ' " `
inoremap {<cr> {<cr><bs>}<esc>ko
inoremap { {}<esc>i
inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i
inoremap ` ``<esc>i
inoremap } <esc>la
inoremap ) <esc>la
inoremap ] <esc>la
