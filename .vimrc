" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vundle configs
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/c.vim'
Plugin 'rstacruz/sparkup'
Plugin 'http://github.com/slim-template/vim-slim.git'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
filetype plugin indent on

" also have pathogen
" execute pathogen#infect()

" testing
" let g:ycm_register_as_syntastic_checker = 0
" let g:ycm_show_diagnostics_ui=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_enable_signs=1

set title
set scrolloff=2			"keep 3 lines above and below cursor
set wildmenu
set wildmode=list:longest
set number 			"line numbers
set gdefault			"greedy search by default

set cursorline			"highlight current line
"highlight CursorLine term=bold ctermbg=darkgrey cterm=none guibg=black guifg=white

set textwidth=80		"80 columns
"set colorcolumn=+1		"highlight long lines

" statusline, always visible
set ls=2
let g:Powerline_symbols = 'unicode'
set encoding=utf-8

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
"set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Better tabs!
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

