scriptencoding utf-8
set shell=/bin/bash
let g:base16_shell_path=expand('~/.config/base16-shell/base16-shell-master/scripts')

" Disable gui
set guioptions=M

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

" The mapleader has to be set before any plugins are loaded
let g:mapleader=';'
let g:maplocalleader='\'

if &compatible
 set nocompatible
endif

call plug#begin('~/.vim/plugged')
  source ~/.config/nvim/config/plugins.vim
call plug#end()

" Installation check
"if has('vim_starting') && dein#check_install()
"  call dein#install()
"endif

source ~/.config/nvim/config/plugins.config.vim

" Colourscheme
syntax on
set background=dark
colorscheme base16-bright
let base16colorspace=256
let html_number_lines = 0
let html_no_pre = 1

" rendering
set ttyfast
set lazyredraw
set timeoutlen=1000 ttimeoutlen=10

"" Custom highlight options
highlight LineNr ctermbg=0 guibg=111
highlight SignColumn ctermfg=14 ctermbg=0 guifg=Cyan guibg=111
highlight SignatureMarkText guifg=orange

" GitGutter
highlight GitGutterAdd ctermbg=0 guibg=111
highlight GitGutterChange ctermbg=0 guibg=111
highlight GitGutterDelete ctermbg=0 guibg=111
highlight GitGutterChangeDelete ctermbg=0 guibg=111
highlight GitGutterChangeDeleteFirstLine ctermbg=0 guibg=111

" CtrlSpace
highlight CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=0    guibg=#333 cterm=bold gui=bold
highlight CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=0   guibg=#333 cterm=NONE gui=NONE
highlight CtrlSpaceSearch   ctermfg=220  guifg=#808080 ctermbg=NONE  guibg=#000014    cterm=bold    gui=bold
highlight CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=NONE   guibg=#333 cterm=NONE    gui=NONE

" Tabs & indenting
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

au FileType ruby setl sw=2 sts=2 et
au FileType typescript,javascript,css,less,sass,scss,stylus setl sw=2 sts=2 et
au FileType php,phtml,html setl sw=2 sts=2 et

set textwidth=120
set formatoptions-=t

" General settings
set completeopt=menuone
set number
set cindent
"set regexpengine=1
set hidden
"set viminfo='1000,f1
set history=1000 " remember more commands and search history
set undolevels=1000 " remember more undo levels
set noshowmode " No need to show mode due to Powerline
set encoding=utf-8 " Explicitly set encoding to utf-8
let loaded_matchparen=1 " Prevents MatchParen from loading, which can cause slowdown
set backspace=indent,eol,start " fix delete fail on os x http://vim.wikia.com/wiki/backspace_and_delete_problems
set foldmethod=expr

" Clipboard fiddling
set clipboard+=unnamedplus

" shortcut to delete in the black hole register
vnoremap m d
nnoremap m d
nnoremap mm dd
nnoremap d "_d
vnoremap d "_d
nnoremap dd "_dd

" Do not highlight current line
set nocursorline
set nocursorcolumn

" a - terse messages (like [+] instead of [Modified])
" t - truncate file names
" I - no intro message when starting vim fileless
" T - truncate long messages to avoid having to hit a key
set shortmess=atIT

set autoread " Reload files changed outside vim

" wrapping
setlocal wrap linebreak nolist
set virtualedit=
setlocal display+=lastline
set showbreak=…
nnoremap k gk
nnoremap j gj
nnoremap 0 g0
nnoremap $ g$
onoremap j gj
onoremap k gk

set fcs=vert:│ " Solid line for vsplit separator

" Replace previous search
nmap <expr>  M  ':%s/' . @/ . '//g<LEFT><LEFT>'

" Replace selection
vnoremap <space>r "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <space>r :%s/\<<C-r><C-w>\>/

" disable ex mode
nnoremap Q <nop>
map q: :q

" Disable K looking stuff up
map K <Nop>

" I can type :help on my own, thanks.
noremap <F1> <Esc>
nmap <F1> <nop>
imap <F1> <nop>

nnoremap <F2> :set invpaste paste?<CR>

" Delete a given line then move back to initial line
" http://stackoverflow.com/a/8495125/187954
command! -range -nargs=0 D <line1>,<line2>d|norm ``

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Turn Off Swap Files
set noswapfile
set nobackup
set nowb

" Position saving
" http://amix.dk/vim/vimrc.html
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" Yank without jank - preserve expected cursor position after yank
" https://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap <expr>y "my\"" . v:register . "y`y"

" ^ is too far
nnoremap 0 ^
nnoremap ^ 0

" Persistent Undo
" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
if has("persistent_undo")
  set undodir=~/.vim/backups
  set undofile
endif

" Scrolling
set scrolloff=8 " Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

set smartcase
set ignorecase
set showmatch

" Show special characters
" http://vimcasts.org/episodes/show-invisibles/
" Shortcut to rapidly toggle `set list`
set list

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:┆\ ,trail:•,extends:❯,precedes:❮
set fillchars=diff:·
set shiftround

" Open preview window at bottom
set splitbelow
set splitright

" c-s save
" noremap <silent> <C-S>          :update<CR><ESC>
" vnoremap <silent> <C-S>         <C-C>:update<CR><ESC>
" inoremap <silent> <C-S>         <C-O>:update<CR><ESC>

" Comfortable window resizing
nnoremap <silent> <s-k> :call UpHorizontal()<CR>
nnoremap <silent> <s-j> :call DownHorizontal()<CR>
nnoremap <silent> <s-l> :call RightVertical()<CR>
nnoremap <silent> <s-h> :call LeftVertical()<CR>

"WINDOW RESIZING Down
func! DownHorizontal()
  let currentWin = winnr()
  "If no window below or above leave as is, otherwise call function
  wincmd j
  if winnr() == currentWin
    wincmd k
    if winnr() == currentWin
      wincmd k
    else
      exe currentWin . "wincmd w"
      call DownHorizontalAdjust()
    endif
  else
    exe currentWin . "wincmd w"
    call DownHorizontalAdjust()
  endif
endfun

func! DownHorizontalAdjust()
  let currentWin = winnr()
  "If very bottom window, decrease window size, otherwise just increase current window size
  wincmd j
  if winnr() == currentWin
    resize -1
  else
    exe currentWin . "wincmd w"
    resize +1
  endif
endfun

"WINDOW RESIZING Up
func! UpHorizontal ()
  let currentWin = winnr()
  "If no window below or above leave as is
  wincmd j
  if winnr() == currentWin
    wincmd k
    if winnr() == currentWin
      wincmd k
    else
      exe currentWin . "wincmd w"
      call UpHorizontalAdjust()
    endif
  else
    exe currentWin . "wincmd w"
    call UpHorizontalAdjust()
  endif
endfun

func! UpHorizontalAdjust()
  let currentWin = winnr()
  "If very top window, decrease window size, otherwise just increase current window size
  wincmd k
  if winnr() == currentWin
    resize -1
  else
    resize -1
    exe currentWin . "wincmd w"
  endif
endfun


"WINDOW RESIZING Right (only requires 1 function)
func! RightVertical()
  let currentWin = winnr()
  " If very right window, decrease window size, otherwise just increase current window size
  wincmd l
  if winnr() == currentWin
    vertical resize -1
  else
    exe currentWin . "wincmd w"
    vertical resize +1
  endif
endfun


"WINDOW RESIZING Left (only requires 1 function)
func! LeftVertical()
  let currentWin = winnr()
  " If very left window, decrease window size, otherwise just increase current window size
  wincmd h
  if winnr() == currentWin
    vertical resize -1
  else
    vertical resize -1
    exe currentWin . "wincmd w"
  endif
endfun

" http://vim.wikia.com/wiki/Reverse_selected_text
vnoremap <C-r> c<C-O>:set revins<CR><C-R>"<Esc>:set norevins<CR>"

" select previously changed text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Tabs
map <leader>t :tabnew<CR>
map <leader>x :tabclose<CR>

map <leader>n :f!<CR>
