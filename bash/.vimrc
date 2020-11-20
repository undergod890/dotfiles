syntax on
set number
set showmatch

set hlsearch
set smartcase
set incsearch
set ignorecase

set autoindent
set smartindent
set smarttab
set bg=dark

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>

map I :! pdflatex %<CR><CR>
map S :! zathura %<.pdf & <CR><CR>

