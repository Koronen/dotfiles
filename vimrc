" Turn off compatability with VI
set nocompatible

" Add system installed plugins to runtimepath
if isdirectory("/usr/share/vim/addons")
  set runtimepath+=/usr/share/vim/addons
endif

" Let Pathogen do its infecting
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Map leader
let mapleader = ","

" Use Unicode and Unix linebreaks
set termencoding=utf-8 encoding=utf-8 fileformat=unix

" Don't pollute working directories with swap or backup files
set directory-=.
set backupdir-=.

" Set colorscheme and palette
if &term =~? 'xterm'
  set t_Co=256
  colorscheme solarized
  set background=light
else
  colorscheme desert
endif

" Default indentation settings
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab

" Highlight current row
set cursorline
if has("autocmd")
  au WinLeave * setlocal nocursorline
  au WinEnter * setlocal cursorline
endif

""" UI
set number " Display line numbers on the left
set cmdheight=2 " Set the command window height to 2 lines
set title " Change the title bar to show the file that is edited
set list " Display unprintable characters (tabs, spaces etc.)
set hidden " Allow switching from unsaved buffers
set visualbell t_vb= " Disable bells and flashes
set splitbelow splitright " Push new splits to bottom/right
set textwidth=80 " Set text width

" Better command-line completion
set wildmode=list:longest,full
set wildignore=*~,*.swp " Swap files
set wildignore+=a.out,*.a,*.o,*.class " Compiled binaries
set wildignore+=*.aux,*.idx,*.ilg,*.ind,*.lof,*.lot,*.out,*.toc " LaTeX compiled files
set wildignore+=*.tar,*.gz,*.zip " Archives
set wildignore+=.git/*,.gitkeep,.svn/*,.hg/* " VCS

""" Search and highlight
set incsearch " Search as you type
set hlsearch " Highlight matches
set smartcase " Use smart case matching
set showmatch " Show matching brackets
nnoremap <silent> <space> :nohlsearch<CR>

" Disable arrow keys
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
noremap <Down> <Nop>

" Sane j and k
nmap j gj
nmap k gk

" Ctrl+h/l switches between buffers
noremap <C-h> :bprevious<CR>
noremap <C-l> :bnext<CR>

" Using Tab and Shift-Tab to (un)indent
nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

" More comfortable line scrolling mappings
nnoremap <C-j> <C-e>gj
nnoremap <C-k> <C-y>gk

" Use F2 to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" Disable paste after leaving insert mode
if has("autocmd")
  autocmd InsertLeave * set nopaste
endif

" NERDtree
nmap <F4> :NERDTreeToggle<CR>
imap <F4> <Esc>:NERDTreeToggle<CR>

" CtrlP
map <C-b> :CtrlPBuffer<CR>

" Trim trailing whitespace
function! TrimTrailingWhitespace()
  let _s=@/
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=_s
  call cursor(l, c)
endfunction
noremap <silent> <leader><space> :call TrimTrailingWhitespace()<CR>

""" Abbreviations
abbreviate pry! require 'pry'; binding.pry

" Source a local configuration file if available
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
