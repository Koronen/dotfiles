if isdirectory("/usr/share/vim/addons")
  set runtimepath+=/usr/share/vim/addons
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

let mapleader = ","

if &t_Co >= 256
  set background=light
  silent! colorscheme solarized
endif

set cursorline
if has("autocmd")
  au WinLeave * setlocal nocursorline
  au WinEnter * setlocal cursorline
endif

set cmdheight=2
set colorcolumn=+1
set directory-=.
set encoding=utf-8
set expandtab
set fileformat=unix
set foldlevelstart=99
set hidden
set hlsearch
set ignorecase
set list
set nojoinspaces
set noswapfile
set number
set pastetoggle=<F2>
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set splitbelow
set splitright
set synmaxcol=300
set t_vb=
set tabstop=8
set termencoding=utf-8
set textwidth=80
set title
set updatetime=750
set visualbell
set wildignore+=*.aux,*.idx,*.ilg,*.ind,*.lof,*.lot,*.out,*.toc
set wildignore+=*.tar,*.gz,*.zip
set wildignore+=*~,*.swp
set wildignore+=.git/*,.gitkeep,.svn/*,.hg/*
set wildignore+=a.out,*.a,*.o,*.class
set wildmode=list:longest,full

nnoremap <silent> <space> :nohlsearch<CR>

nnoremap Q <Nop>
nnoremap K <Nop>
vnoremap K <Nop>

nmap j gj
nmap k gk

nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

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

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

abbreviate irb! binding.irb
abbreviate pry! require 'pry'; binding.pry

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
