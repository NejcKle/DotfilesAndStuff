set nocompatible              " be iMproved, required, work as VIM not VI
filetype off              

"Will automaticaly install vim-plug and all plugins if empty
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"List of plugins
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sudar/vim-arduino-syntax'
Plug 'SirVer/ultisnips'
Plug 'sudar/vim-arduino-snippets'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'connorholyday/vim-snazzy'
Plug 'chaoren/vim-wordmotion'
call plug#end()

    
" Visual, colorscheme settings
colorscheme snazzy 
"let g:solarized_termcolors=256
set background=dark            "You can set it to dark


" Tons of editor settings, that accumulated over time
set guifont=Consolas:h10        " set font
syntax enable                   " enable automatic syntax
set clipboard=unnamed           " connect system clipboard with Vim clipboard
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " number of spaces when indenting with >
set expandtab                   " tabs are spaces
set number                      " show line numbers
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set colorcolumn=80              " highlight specified column for line wraping
filetype indent on              " load filetype-specific indent files
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw only when we need to.
set showmatch                   " highlight matching [{()}]
set foldenable                  " enable folding
set foldlevelstart=10           " open most folds by default
set foldnestmax=10              " 10 nested fold max
set lines=45 columns=100        " Size of default window
set guioptions-=m               " remove menu bar
set guioptions-=T               " remove toolbar
set guioptions-=L               " remove left-hand scroll bar
set belloff=all                 " Disable beeping 
set fileformat=unix             " LF endings, so that Github doesn't bother me
set splitright                  " Opens new split windows to the right
let python_highlight_all=1
set backspace=indent,eol,start  " Backspace will work normaly in insert mode
set linebreak                   " Editor window does not break words in the middle anymore.
set encoding=utf-8              " For special slovenian characters"
set fileencoding=utf-8          " For special slovenian characters"
set scrolloff=5                 " This is amazing, cursor won't go to 
                                " the end of the screen when scrolling
set updatetime=100              " Needed for gitgutter plugin

" For Vim + latex
let g:vimtex_view_method = 'mupdf'

" Key mappings

" split navigations, they are not needed anymore cause of
" 'christoomey/vim-tmux-navigator' plugin
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

:set tags=./tags,tags          "Used to tell where tags are located
nnoremap ii g<C-]>              "Jump IN a tag
nnoremap oo <C-t>               "Jump OUT of a tag

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" jk is escape
inoremap jk 

" Open NerdTree with control + c
map <C-c> :NERDTreeToggle<CR>

" Used for running python from VIM
filetype on
autocmd FileType python nnoremap <buffer> <C-Y> :wa \| exec '!python3' shellescape(@%, 1)<cr>

" Use alt+d for arduino compile and flash
" nnoremap <silent> <C-d> :wa \| !arduino-cli compile --fqbn TleraCorp:stm32l0:IRNAS-env-module-L072Z main.ino && arduino-cli upload --fqbn TleraCorp:stm32l0:IRNAS-env-module-L072Z -p COM11 -i main.ino.TleraCorp.stm32l0.IRNAS-env-module-L072Z.dfu <CR>
"nnoremap <silent> <C-d> :wa \| !arduino-cli compile --fqbn esp32:esp32:featheresp32 main.ino && arduino-cli upload --fqbn esp32:esp32:featheresp32 -p COM27 -i main.ino.esp32.esp32.featheresp32 <CR>

" Used for ulti snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Very magical command, with ctrl + D i can now send command to other tmux
" panel 
nnoremap <silent> <C-d> :exe "!tmux send -t 1 'cargo run' Enter"<CR> 

