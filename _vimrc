"--------- from vundle for windows
set rtp+=~/.vim/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'vim-scripts/Vim-R-plugin'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/CycleColor'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/NERDTree'
Plugin 'Valloric/MatchTagAlways'
Plugin 'gregsexton/MatchTag'
Plugin 'mattn/emmet-vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'othree/xml.vim'

Plugin 'jwhitley/vim-matchit'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
" Plugin 'Vim-R-plugin'
" Git plugin not hosted on GitHub:
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Setting some decent VIM settings for programming
set ai                          " set auto-indenting on for programming
set showmatch                   " automatically show matching brackets. works like it does in bbedit.
set vb                          " turn on the "visual bell" - which is much quieter than the "audio blink"
set ruler                       " show the cursor position all the time
set laststatus=2                " make the last line where the status is two lines deep so you can see status always
set backspace=indent,eol,start  " make that backspace key work the way it should
set nocompatible                " vi compatible is LAME
set background=dark             " Use colours that work well on a dark background (Console is usually black)
set showmode                    " show the current mode
syntax on                       " turn syntax highlighting on by default
set hidden                      " recommended for buffers or something
" Show EOL type and last modified timestamp, right after the filename
set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

"------------------------------------------------------------------------------
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    "Set UTF-8 as the default encoding for commit messages
    autocmd BufReadPre COMMIT_EDITMSG,git-rebase-todo setlocal fileencodings=utf-8
	
    "Remember the positions in files with some git-specific exceptions"
    autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$")
	\           && expand("%") !~ "COMMIT_EDITMSG"
	\           && expand("%") !~ "ADD_EDIT.patch"
	\           && expand("%") !~ "addp-hunk-edit.diff"
	\           && expand("%") !~ "git-rebase-todo" |
	\   exe "normal g`\"" |
	\ endif
	
	autocmd BufNewFile,BufRead *.patch set filetype=diff
	autocmd BufNewFile,BufRead *.diff set filetype=diff
	
	autocmd Syntax diff
	\ highlight WhiteSpaceEOL ctermbg=red |
	\ match WhiteSpaceEOL /\(^+.*\)\@<=\s\+$/
	
	autocmd Syntax gitcommit setlocal textwidth=74
	endif " has("autocmd")
	
	"----------- from http://bixly.com/blog/setting-up-and-using-vim-for-python-django-development/ 	
	filetype on "filetype detection 
	filetype plugin indent on "filetype-based indentation 
	set tabstop=4 expandtab shiftwidth=4 softtabstop=4 "python-compatible tab setup 
	set foldmethod=indent foldlevel=99 "python-compatible folding
	set number "line numbers
	"---------- from https://code.djangoproject.com/wiki/UsingVimWithDjango
	autocmd FileType python set sw=4
	autocmd FileType python set ts=4
	autocmd FileType python set sts=4
	
	let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
	let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
	let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
	let g:ycm_complete_in_comments = 1 " Completion in comments
	let g:ycm_complete_in_strings = 1 " Completion in string
    "----- from http://stackoverflow.com/questions/14315519/conemu-vim-syntax-highlight/14434531#14434531
    " set term=xterm
    " set t_Co=256
    " let &t_AB="\e[48;5;%dm"
    " let &t_AF="\e[38;5;%dm"
    "
    "---- from http://vim.sourceforge.net/scripts/script.php?script_id=13
    " :au Filetype html,xml,xsl,php source ~/vimfiles/scripts/closetag.vim 
    "set t_Co=256  " make use of 256 terminal colors
    "color summerfruit256
    
     R script settings
    let maplocalleader = ","
     vmap <Space> <Plug>RDSendSelection
     nmap <Space> <Plug>RDSendLine
     let vimrplugin_vsplit=1
