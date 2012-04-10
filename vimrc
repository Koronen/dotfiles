" URL: http://vim.wikia.com/wiki/Example_vimrc
" Authors: http://vim.wikia.com/wiki/Vim_on_Freenode
" Description: A minimal, but feature rich, example .vimrc. If you are a
"              newbie, basing your first .vimrc on this file is a good choice.
"              If you're a more advanced user, building your own .vimrc based
"              on this file is still a good idea.

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Let Pathogen do its infecting
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

"------------------------------------------------------------
" Features {{{1
"
" These options and commands enable some very useful features in Vim, that
" no user should have to live without.

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has("autocmd")
  filetype plugin indent on
endif

" Enable syntax highlighting
if has("syntax")
  syntax on
endif


"------------------------------------------------------------
" Must have options {{{1
"
" These are highly recommended options.

" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden

" Note that not everyone likes working this way (with the hidden option).
" Alternatives include using tabs or split windows instead of re-using the same
" window for multiple buffers, and/or:
" set confirm
" set autowriteall

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
" script, <http://www.vim.org/scripts/script.php?script_id=1876>.
" set nomodeline


"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=

" Use 16-color palette
set t_Co=16

" Enable use of the mouse for all modes
"set mouse=a

" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Use <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>


"------------------------------------------------------------
" Indentation options {{{1
"
" Indentation settings according to personal preference.

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab

" Highlight tabs
set list
set listchars=tab:>\ 

" Set text width
set textwidth=79
set colorcolumn=80

"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings

" Map leader
let mapleader = ","

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
"nnoremap <C-L> :nohl<CR><C-L>

" Ctrl+Left/right switches between buffers
noremap <C-Left> :bprevious<CR>
noremap <C-Right> :bnext<CR>

" Using Tab and Shift-Tab to (un)indent
map <Tab> >gv
map <S-Tab> <gv

" Navigate splits
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Jump to beginning/end of line
noremap <C-A> <Home>
inoremap <C-A> <Home>
noremap <C-E> <End>
inoremap <C-E> <End>

" NERDtree
map <F4> :NERDTreeToggle<CR>
imap <F4> <Esc>:NERDTreeToggle<CR>


"------------------------------------------------------------
" Custom settings {{{1
"
" Your own custom settings.

" Use Unicode and Unix linebreaks
"let &termencoding = &encoding
set termencoding=utf-8
set encoding=utf-8
set fileformat=unix

" Change the title bar to show the file that is edited
set title

" Set a custom color scheme
colorscheme solarized

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Keep a couple of lines when scrolling
set scrolloff=3

" Smoother TTY changes
set ttyfast

" Show matching brackets
set showmatch

" Highlight current row and column
if has("autocmd")
  au WinLeave * setlocal nocursorline
  au WinEnter * setlocal cursorline
endif
set cursorline


"------------------------------------------------------------
" Language specific settings {{{1
"
" Language specific settings.

if has("autocmd")
  " Options for languages strict about whitespace
  autocmd FileType make setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
  autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

  " Options for languages with whitespace conventions
  autocmd FileType ruby setlocal formatoptions=ql tabstop=2 shiftwidth=2 smarttab expandtab

  " Manually set filetype for certain files
  autocmd BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Thorfile,Vagrantfile,config.ru} set ft=ruby
  autocmd BufRead,BufNewFile {*.json} set ft=javascript
endif


"------------------------------------------------------------
" Local settings {{{1
"
" Source a local configuration file if available
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
