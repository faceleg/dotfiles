" utilities

" junegunn/vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Leader><Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" highlighting
"augroup vimrc_highlighting
"  autocmd!
"
"  " junegunn/rainbow_parentheses.vim
"  autocmd FileType coffee,java,javascript,typescript,json,php,sass,scss,vim :RainbowParentheses
"
"  " jaxbot/semantic-highlight.vim
"  autocmd CursorHold *.jsx,*.js,*.tsx,*.ts :SemanticHighlight
"augroup end

" let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

" jaxbot/semantic-highlight.vim
" autocmd FileType javascript setlocal iskeyword+=$
" let g:semanticTermColors = [1,2,3,4,5,6,7,25,9,10,12,13,14,15,16,17,19,20]
" let g:semanticEnableFileTypes = {
"       \ 'javascript': 'js',
"       \ 'typescript': 'ts',
"       \ 'coffee': 'coffee',
"       \ 'vim': 'vim',
"       \ 'java': 'java',
"       \ 'php': 'php',
"       \ }
" let g:semanticUseCache = 1
" let g:semanticPersistCache = 1

" visual
" kshenoy/vim-signature
  let g:SignatureMarkTextHLDynamic = 1
  let g:SignatureIncludeMarks = 'abcdefghijklmnopqrstuvwxzABCDEFGHIJKLMNOPQRSTUVWXZ'

  let g:SignatureMap = {
        \ 'Leader'             :  't',
        \ 'PlaceNextMark'      :  't,',
        \ 'ToggleMarkAtLine'   :  't.',
        \ 'PurgeMarksAtLine'   :  't-',
        \ 'DeleteMark'         :  'dm',
        \ 'PurgeMarks'         :  't<Space>',
        \ 'PurgeMarkers'       :  't<BS>',
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  '`]',
        \ 'GotoPrevSpotAlpha'  :  '`[',
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  ']`',
        \ 'GotoPrevSpotByPos'  :  '[`',
        \ 'GotoNextMarker'     :  ']-',
        \ 'GotoPrevMarker'     :  '[-',
        \ 'GotoNextMarkerAny'  :  ']=',
        \ 'GotoPrevMarkerAny'  :  '[=',
        \ 'ListBufferMarks'    :  't/',
        \ 'ListBufferMarkers'  :  't?'
        \ }

" text objects
" tommcdo/vim-exchange
  " To exchange two words, place your cursor on the first word and type cxiw.
  " Then move to the second word and type cxiw again. Note: the {motion} used
  " in the first and second use of cx don't have to be the same.
" wellle/targets.vim
  " ( ) b (work on parentheses)
  " { } B (work on curly braces)
  " [ ] (work on square brackets)
  " < > (work on angle brackets)
  " t (work on tags)<Paste>
" kana/vim-textobj-entire
  " ie, ae
" gilligan/textobj-gitgutter
  let g:textobj_gitgutter_no_default_key_mappings = 0
  omap ag <Plug>(textobj-gitgutter-i)
  omap ig <Plug>(textobj-gitgutter-i)
  vmap ag <Plug>(textobj-gitgutter-i)
  vmap ig <Plug>(textobj-gitgutter-i)
" kana/vim-textobj-lastpat
  let g:textobj_lastpat_no_default_key_mappings = 0
  omap ah <Plug>(textobj-lastpat-n)
  omap ih <Plug>(textobj-lastpat-n)
  omap aH <Plug>(textobj-lastpat-N)
  omap iH <Plug>(textobj-lastpat-N)
  vmap ah <Plug>(textobj-lastpat-n)
  vmap ih <Plug>(textobj-lastpat-n)
  vmap aH <Plug>(textobj-lastpat-N)
  vmap iH <Plug>(textobj-lastpat-N)
" Julian/vim-textobj-variable-segment
  " iv, av
" bkad/CamelCaseMotion
  " ,e
  " ,w
  " ... etc
" tyru/operator-camelize.vim
  " map <leader>c <Plug>(operator-camelize-toggle)
" tpope/vim-abolish
  " crs coerce to sname_case
  " crm
  " crc
  " cr_
  " crs
  " cru
  " cr-
  " crk
  " cr.
" Julian/vim-textobj-brace
  " ij, aj
" kana/vim-textobj-syntax
  " iy, ay
" saihoooooooo/vim-textobj-space
  " iq, aq
" glts/vim-textobj-comment
  " iS, aS
" coderifous/textobj-word-column.vim
  " ic, ac, iC, aC

" " tpope/vim-commentary
autocmd FileType javascript.jsx,typescript.jsx setlocal commentstring={/*\ %s\ */}

" formatting
" ntpeters/vim-better-whitespace
  augroup vimrc_better_whitespace
    autocmd!
    autocmd FileType c,coffee,cpp,css,less,sass,scss,java,php,ruby,puppet,typescript,javascript,vim,sh,nginx,ant,xml autocmd BufWritePre <buffer> StripWhitespace
  augroup end
  let g:better_whitespace_filetypes_blacklist = ['unite']

" languages
" sheerun/vim-polyglot
" au BufNewFile,BufRead *.vm set ft=velocity
" au BufNewFile,BufRead *.coffee set ft=coffee
" au BufNewFile,BufRead *.html set ft=html
" let g:polyglot_disabled = ['jinja', 'json', 'javascript', 'typescript']
" TreeSitter
lua require('config/treesitter')

" json

" javascript

" typescript

" completion, snippets

" coc
source ~/.config/nvim/config/plugins.config.coc.vim

" vim feature enhancement

" force quickfix to be at bottom and take up entire width
au FileType qf wincmd J

" AndrewRadev/splitjoin.vim
nmap gS :SplitjoinSplit<cr>
nmap gJ :SplitjoinJoin<cr>

" AndrewRadev/switch.vim
" gs to switch booleans and ... other things

" AndrewRadev/sideways.vim
nmap <c-h> :SidewaysLeft<cr>
nmap <c-l> :SidewaysRight<cr>

" file management
" Shougo/vimfiler.vim
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
nmap <space>f :VimFilerBufferDir -explorer -force-quit -horizontal<CR>
nmap <leader>f :VimFilerBufferDir -find -explorer -force-quit -horizontal<CR>

" cursor motion
" matze/vim-move
" <C-k>   Move current line/selections up
" <C-j>   Move current line/selections down
let g:move_key_modifier = 'C'
" haya14busa/incsearch-fuzzy.vim
if has('nvim')
  set inccommand=nosplit
endif

map f/ <Plug>(incsearch-fuzzy-/)
map f? <Plug>(incsearch-fuzzy-?)
map fg/ <Plug>(incsearch-fuzzy-stay)
" haya14busa/incsearch-easymotion.vim
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" Lokaltog/vim-easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_do_shade = 1
let g:EasyMotion_do_mapping = 1

" <Leader>f{char} to move to {char}
" map  <Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
map s <Plug>(easymotion-s2)
" map t <Plug>(easymotion-t2)
" nmap <Leader>s <Plug>(easymotion-overwin-f2)

map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" auto pairs graveyard
" Raimondi/delimitMate
let delimitMate_expand_cr = 1

" pasting
" troydm/zoomwintab.vim
" <c-w>o
" Shougo/neoyank.vim
nmap <space>y :Unite history/yank -default-action=append<CR>
let g:neoyank#file = $HOME.'/.cache/nvim/yanks.txt'

" searching
" junegunn/fzf.vim
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1

nmap <c-f> :Files<CR>
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" p for project files
nmap <space>p :GitFiles<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

nmap <space>g :RG<CR>

" b for buffers
nmap <space>b :Buffers<CR>
" dkprice/vim-easygrep
let g:EasyGrepCommand='ag'
nmap <space>e :Grep<space>

" session management
" dhruvasagar/vim-prosession
nmap <space>o :Obsession
" vim-ctrlspace/vim-ctrlspace
nmap <c-space> :CtrlSpace<CR>

" theme
let base16colorspace=256

" status bar
" bling/vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'colorline'
let g:airline_exclude_preview = 1
let g:airline#extensions#tabline#enabled = 1

" error reporting

" multiselect
" terryma/vim-multiple-cursors
let  g:multi_cursor_exit_from_visual_mode = 0
let  g:multi_cursor_exit_from_insert_mode = 0

nnoremap <silent> <leader>c :MultipleCursorsFind <C-R>/<CR>
vnoremap <silent> <space>c :MultipleCursorsFind <C-R>/<CR>

" window management
" t9md/vim-choosewin
let g:choosewin_overlay_enable = 1
nmap - :ChooseWin<CR>

let g:choosewin_blink_on_land      = 1 " dont' blink at land
let g:choosewin_statusline_replace = 1 " don't replace statusline
let g:choosewin_tabline_replace    = 1 " don't replace tabline

" wesQ3/vim-windowswap
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" buffer management
" vim-scripts/bufkill.vim
nnoremap <space>d :BW<CR>

" airblade/vim-gitgutter

