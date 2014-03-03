set nocompatible

if isdirectory("/usr/share/vim/addons")
  set runtimepath+=/usr/share/vim/addons
endif

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

let mapleader = ","

set termencoding=utf-8 encoding=utf-8 fileformat=unix

set directory-=. backupdir-=.

if &term =~? 'xterm'
  set t_Co=256
  set background=light
  colorscheme solarized
else
  colorscheme desert
endif

set tabstop=8 softtabstop=4 shiftwidth=4 expandtab

set cursorline
if has("autocmd")
  au WinLeave * setlocal nocursorline
  au WinEnter * setlocal cursorline
endif

set number
set cmdheight=2
set title
set list
set hidden
set visualbell t_vb=
set splitbelow splitright
set textwidth=80
set nojoinspaces

set wildmode=list:longest,full
set wildignore=*~,*.swp
set wildignore+=a.out,*.a,*.o,*.class
set wildignore+=*.aux,*.idx,*.ilg,*.ind,*.lof,*.lot,*.out,*.toc
set wildignore+=*.tar,*.gz,*.zip
set wildignore+=.git/*,.gitkeep,.svn/*,.hg/*

set hlsearch
set smartcase
set showmatch
nnoremap <silent> <space> :nohlsearch<CR>

nnoremap Q <Nop>

nmap j gj
nmap k gk

nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

set pastetoggle=<F2>

if has("autocmd")
  autocmd InsertLeave * set nopaste
endif

map <C-b> :CtrlPBuffer<CR>

function! PreservingSearchAndCursor(command)
  let _s=@/
  let l = line(".")
  let c = col(".")
  execute a:command
  let @/=_s
  call cursor(l, c)
endfunction
noremap <silent> <leader><space> :call PreservingSearchAndCursor("%s/\\s\\+$//e")<CR>

nnoremap <leader>gg :Ggrep<Space>

abbreviate pry! require 'pry'; binding.pry

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
