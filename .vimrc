set nocompatible              " be iMproved, required, don't use antiquated settings
filetype off                  " required
set noshowmode		      " don't show what mode you are in

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vim-Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Themes
"Plugin 'dracula/vim'
Plugin 'tomasr/molokai'
Plugin 'gh123man/vim-atom-dark'
Plugin 'reewr/vim-monokai-phoenix'
Plugin 'liuchengxu/space-vim-dark'
" CPP Syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

"NerdTree
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"Vim-devicons
Plugin 'ryanoasis/vim-devicons'

"Tagbar
Plugin 'majutsushi/tagbar'

"Colorscheme switcher
"Plugin 'felixhummel/setcolors.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'

"More ColorSchemes
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" " These are the basic settings to get the font to work (required):
set encoding=utf-8

" ------------------- Vim-Airline Settings/Cmd----------------------
set laststatus=2 " to active vim-airline

" use powerline fonts
let g:airline_powerline_fonts = 1

" set the theme for vim-airline
let g:airline_theme='dark'

" Look like powerline
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" -----------------------------------------Tagbar Settings/cmd----------
let g:tagbar_show_linenumbers = 1

" -----------------------NERDTree Setting/Cmd------------------------
let g:nerdtree_tabs_open_on_console_startup=0

" -------------------------MISC----------------------------------
"Enable Syntax coloring
syntax on

" Line Numbers
set nu

" Tabs as space and tab is 2 spaces
set tabstop=2 " Tab insert 2 spaces
set shiftwidth=2 " Change the number of spaces for indendation
set smarttab " force use of shiftwidth and tabstop
set expandtab " insert spaces instead of tabs

" space vim theme
set termguicolors
let g:space_vim_dark_background = 233

"Set colorschme
colorscheme molokai

" Set a colorcolumn at 80 characters
set colorcolumn=80

" -------------------------------Auto Commands-------------------------------------

" Disable auto comment next line
autocmd BufNewFile,BufRead * setlocal formatoptions-=r

" Automatically remove whitespace
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" -------------------------------KeyBindings---------------------------------------
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"remap page up/down
nnoremap <S-F> <C-F>
nnoremap <S-B> <C-B>

"split navigations
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

"modifyOtherKeys
let &t_TI = ""
let &t_TE = ""
