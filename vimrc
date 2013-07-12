" Turn off compatability with VI
set nocompatible

" Let Pathogen do its infecting
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has("filetype")
  filetype plugin indent on
endif

" Enable syntax highlighting
if has("syntax")
  syntax on
endif

" Map leader
let mapleader = ","

" Use Unicode and Unix linebreaks
set termencoding=utf-8 encoding=utf-8 fileformat=unix

" Set colorscheme, background and palette
colorscheme solarized
set background=light
set t_Co=16

" Default indentation settings
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab

" Copy indention from previous line if no other rules apply
set autoindent

" Highlight current row
set cursorline
if has("autocmd")
  au WinLeave * setlocal nocursorline
  au WinEnter * setlocal cursorline
endif

""" Buffer read/write
set hidden " Allow switching from unsaved buffers
set autoread " Automatically reload file after external write

""" UI
set number " Display line numbers on the left
set ruler " Display cursor position on status line
set scrolloff=3 " Keep a couple of lines when scrolling
set cmdheight=2 " Set the command window height to 2 lines
set title " Change the title bar to show the file that is edited
set list " Display unprintable characters (tabs, spaces etc.)
set listchars=tab:>\ " Highlight trailing tabs
set visualbell t_vb= " Disable bells and flashes
set splitbelow splitright " Push new splits to bottom/right
set ttimeoutlen=100 " Minimal wait for key codes

" Set text width
set textwidth=79
if v:version > 703
  set colorcolumn=80
endif

" Allow backspacing over everything
set backspace=indent,eol,start

""" Statusline
set laststatus=2 " Always display the status line
set showcmd " Show partial commands in the last line of the screen

" Better command-line completion
set wildmenu
set wildmode=list:longest,full
set wildignore=*~,*.swp,*/tmp/* " Swap files
set wildignore+=a.out,*.a,*.o,*.class " Compiled binaries
set wildignore+=*.aux,*.idx,*.ilg,*.ind,*.lof,*.lot,*.out,*.toc " LaTeX compiled files
set wildignore+=*.tar,*.gz,*.zip " Archives
set wildignore+=.git/*,.gitkeep,.svn/*,.hg/* " VCS

""" Search and highlight
set hlsearch " Highlight matches
set smartcase " Use smart case matching
set showmatch " Show matching brackets

" Sane j and k
nmap j gj
nmap k gk

" Mapping to toggle search highlight
nnoremap <C-l> :set hls!<CR>
inoremap <C-l> :set hls!<CR>

" Map Y to act like D and C (to yank until EOL), rather than default (yy)
map Y y$

" Ctrl+Left/right switches between buffers
noremap <C-Left> :bprevious<CR>
noremap <C-Right> :bnext<CR>

" Using Tab and Shift-Tab to (un)indent
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

" Jump to beginning/end of line
nnoremap <C-A> <Home>
inoremap <C-A> <Home>
nnoremap <C-E> <End>
inoremap <C-E> <End>

" Use F2 to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Disable paste after leaving insert mode
if has("autocmd")
  autocmd InsertLeave * set nopaste
endif

" NERDtree
nmap <F4> :NERDTreeToggle<CR>
imap <F4> <Esc>:NERDTreeToggle<CR>

" Syntastic
let g:syntastic_cpp_compiler_options = ' -std=c++0x'

" Language specific settings.
if has("autocmd")
  " Options for languages strict about whitespace
  autocmd FileType make setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
  autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

  " Options for languages with whitespace conventions
  autocmd FileType ruby setlocal formatoptions=ql tabstop=2 shiftwidth=2 smarttab expandtab
  autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType gitconfig setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab

  " Manually set filetype for certain files
  autocmd BufRead,BufNewFile {Gemfile,Guardfile,Rakefile,Thorfile,Vagrantfile,config.ru} set ft=ruby
  autocmd BufRead,BufNewFile {*.json} set ft=javascript
  autocmd BufRead,BufNewFile {*.bib} set ft=tex
endif

" Source a local configuration file if available
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
