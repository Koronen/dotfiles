if isdirectory("/usr/share/vim/addons")
  set runtimepath+=/usr/share/vim/addons
endif

function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('altercation/vim-colors-solarized')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('bogado/file-line')
  call minpac#add('ConradIrwin/vim-bracketed-paste')
  call minpac#add('chrisjohnson/vim-grep')
  call minpac#add('ctrlpvim/ctrlp.vim')
  call minpac#add('dense-analysis/ale')
  call minpac#add('ervandew/supertab')
  call minpac#add('junegunn/vim-easy-align')
  call minpac#add('junegunn/vim-peekaboo')
  call minpac#add('kana/vim-textobj-user')
  call minpac#add('nelstrom/vim-textobj-rubyblock')
  call minpac#add('pbrisbin/vim-mkdir')
  call minpac#add('roman/golden-ratio')
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('thoughtbot/vim-rspec')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-bundler')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-projectionist')
  call minpac#add('tpope/vim-rails')
  call minpac#add('tpope/vim-rake')
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-rhubarb')
  call minpac#add('tpope/vim-rsi')
  call minpac#add('tpope/vim-sensible')
  call minpac#add('tpope/vim-sleuth')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-vinegar')

  if filereadable(expand("~/.vimrc.bundles.local"))
    source ~/.vimrc.bundles.local
  endif
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus call PackInit() | call minpac#status()

let mapleader = ","

if &t_Co >= 256
  set background=dark
  silent! colorscheme solarized
endif

set cmdheight=2
set colorcolumn=+1
set cursorline
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
set shortmess-=S
set showmatch
set smartcase
set softtabstop=4
set splitbelow
set splitright
set synmaxcol=300
set t_vb=
set tabstop=8
set tags+=.git/tags
set termencoding=utf-8
set textwidth=120
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

noremap <F1> <Nop>
nmap <F8> <Plug>(ale_fix)

nnoremap Q <Nop>
nnoremap K <Nop>
vnoremap K <Nop>

nmap j gj
nmap k gk

nmap <Tab> >>
nmap <S-Tab> <<
vmap <Tab> >gv
vmap <S-Tab> <gv

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

vnoremap <leader>64d y:let @"=substitute(system('base64 --decode -w 0', @"), '\n$', '', 'g')<cr>gvP
vnoremap <leader>64e y:let @"=system('base64 -w 0', @")<cr>gvP
nnoremap <leader>gg :Ggrep<Space>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

nmap ]a <Plug>(ale_next)
nmap [a <Plug>(ale_previous)
nmap ]A <Plug>(ale_last)
nmap [A <Plug>(ale_first)

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

abbreviate irb! binding.irb
abbreviate pry! require 'pry'; binding.pry

augroup vimrc
  autocmd InsertLeave * set nopaste
  autocmd WinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup end

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

if filereadable(".git/safe/../../.vimrc")
  source .git/safe/../../.vimrc
endif
