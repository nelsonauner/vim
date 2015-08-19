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
" don't change the order
set relativenumber
set number

set foldmethod=syntax
set foldlevel=10
set foldnestmax=10

set tags=./tags;/

" use , instead of \ for leader 
let maplocalleader = ","


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'logstash.vim'
Plugin 'ivanov/vim-ipython'
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

" recommended settings for syntastic:

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"*.md is Markdown
au BufNewFile,BufRead *.md set filetype=markdown
autocmd Filetype markdown setlocal textwidth=80


" langauge-specific settings from naftali
autocmd FileType r setlocal keywordprg=Rhelp "Changes SHIFT-K to get R man pages

autocmd FileType python setlocal keywordprg=~/bin/pydoc "Changes SHIFT-K to get python man pages
"autocmd FileType python setlocal iskeyword+=. "Make np.arange one word

autocmd Filetype html,xml,xsl source ~/.vim/scripts/closetag.vim 
autocmd Filetype html,xml,xsl,java setlocal tabstop=2
autocmd Filetype html,xml,xsl,java setlocal shiftwidth=2
autocmd Filetype html,xml,xsl,java setlocal softtabstop=2

autocmd Filetype text setlocal textwidth=80
autocmd Filetype tex setlocal indentexpr=

autocmd Filetype tsv setlocal noexpandtab
