set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. workslike it does in bbedit.
set vb                          " turn on the "visual bell" - which is muchquieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way itshould
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
syntax on                       " turn syntax highlighting on by default
set hidden                      " recommended for buffers or something
set nocompatible              " be iMproved, required
filetype off                  " required
" hybrid line numbers!
set relativenumber
set number


" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'logstash.vim'
Plugin 'vim-scripts/CycleColor'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/NERDTree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
" Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" sudo save without vim sudo 
cmap w!! w !sudo tee > /dev/null %

" gui preferences from http://vim.wikia.com/wiki/Change_font
if has('gui_running')
  set guioptions-=T  " no toolbar
  colorscheme industry
  set lines=60 columns=108 linespace=0
	  set guifont=Lucida_Console:h10
endif

" recommended settings for syntastic:

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
