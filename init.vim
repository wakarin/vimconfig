if has('nvim')
    source $HOME/.config/nvim/init_dein.vim
    source $HOME/.config/nvim/status_color.vim
    source $HOME/.config/nvim/keymap.vim
else
    source $HOME/.vim/status_color.vim
    source $HOME/.vim/keymap.vim
endif


"----------------------------------------
" system config
"----------------------------------------
set encoding=utf-8
scriptencoding utf-8
set number
set title
set scrolloff=8
set nostartofline
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set visualbell
set timeoutlen=3500
set iskeyword-=_
set wildmode=longest:full,full

set autoread
if has('nvim')
    set directory=~/.config/nvim/swp
    set backup
    set backupdir=~/.config/nvim/backup
    set viminfo+=n~/.config/nvim/.viminfo
else
    set directory=~/.vim/swp
    set backup
    set backupdir=~/.vim/backup
    set viminfo+=n~/.vim/.viminfo
endif
"search
set ignorecase
set smartcase
set wrapscan
set incsearch
set hlsearch
""<esc><esc> off hilight
nnoremap <ESC><ESC> :noh <CR>


" del space when save text
autocmd BufWritePre * :%s/\s\+$//ge

"----------------------------------------
"preview
"----------------------------------------
syntax on
colorscheme desert
" highlight corrnt line
set showmatch
set cursorline
set cursorcolumn
" under line(color terminal)
highlight CursorLine cterm=none ctermfg=none ctermbg=237
highlight CursorColumn cterm=none ctermfg=none ctermbg=234
"highlight CursorLine cterm=reverse ctermfg=none ctermbg=237
" under line(gui)
highlight CursorLine gui=underline guifg=NONE guibg=NONE


"" status line
set statusline=%F%m%r%=%h%w\ %{&ff}\ [TYPE=%Y]\ [%04l+%04v]\ %L\ %p%%
set laststatus=2
set showcmd
