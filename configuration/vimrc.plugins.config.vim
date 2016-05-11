" utilities
" junegunn/vim-easy-align
  " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
  vmap <Leader><Enter> <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

" highlighting
" junegunn/rainbow_parentheses.vim
  autocmd FileType coffee,java,javascript,json,php,sass,scss,vim :RainbowParentheses
  let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
" jaxbot/semantic-highlight.vim
  autocmd FileType javascript setlocal iskeyword+=$
  let g:semanticTermColors = [1,2,3,4,5,6,7,25,9,10,12,13,14,15,16,17,19,20]
  let g:semanticEnableFileTypes = {
        \ 'javascript': 'js',
        \ 'typescript': 'ts',
        \ 'coffee': 'coffee',
        \ 'vim': 'vim',
        \ 'php': 'php',
        \ }
  let g:semanticUseCache = 1
  let g:semanticPersistCache = 1

" visual
" miyakogi/conoline.vim
  let g:conoline_auto_enable = 1
  let g:conoline_use_colorscheme_default_normal = 1
  let g:conoline_use_colorscheme_default_insert = 1
" kshenoy/vim-signature
  let g:SignatureMarkTextHLDynamic = 1

  let g:SignatureMap = {
        \ 'Leader'             :  "'",
        \ 'PlaceNextMark'      :  'm,',
        \ 'ToggleMarkAtLine'   :  'm.',
        \ 'PurgeMarksAtLine'   :  'm-',
        \ 'DeleteMark'         :  'dm',
        \ 'PurgeMarks'         :  'm<Space>',
        \ 'PurgeMarkers'       :  'm<BS>',
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
        \ 'ListBufferMarks'    :  'm/',
        \ 'ListBufferMarkers'  :  'm?'
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
  map <leader>c <Plug>(operator-camelize-toggle)
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

" formatting
" ntpeters/vim-better-whitespace
  autocmd FileType c,coffee,cpp,css,less,sass,scss,java,php,ruby,puppet,typescript,javascript,vim,sh,nginx,ant,xml autocmd BufWritePre <buffer> StripWhitespace
  let g:better_whitespace_filetypes_blacklist = ['unite']

" languages
" sheerun/vim-polyglot
  " au BufNewFile,BufRead *.vm set ft=velocity
  " au BufNewFile,BufRead *.coffee set ft=coffee
  " au BufNewFile,BufRead *.html set ft=html
  " let g:polyglot_disabled = ['jinja', 'json', 'javascript']

" json
" elzr/vim-json
  let g:vim_json_syntax_conceal = 0

" javascript
" marijnh/tern_for_vim
  let g:tern_map_keys=1
  let g:tern_show_argument_hints='on_hold'
  let g:tern_show_signature_in_pum=1
  let g:tern_map_prefix = '<leader>'

  " <Leader> td :TernDoc  Documentation under cursor
  " <Leader> tb :TernDocBrowse  Browse documentation
  " <Leader> tt :TernType Type hints
  " <Leader> td :TernDef  Jump to definition (yes, 'td' is duplicated)
  " <Leader> tpd  :TernDefPreview Jump to definition inside preview
  " <Leader> tsd  :TernDefSplit Definition in new split
  " <Leader> ttd  :TernDefTab Definition in new tab
  " <Leader> tr :TernRefs All references under cursor
  " <Leader> tR :TernRename Rename variable

" javascript & typescript
" heavenshell/vim-jsdoc
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:jsdoc_additional_descriptions = 0
  let g:jsdoc_return = 1
  let g:jsdoc_return_type = 1
  let g:jsdoc_return_description = 1
  let g:jsdoc_default_mapping = 0 " default: 1 Set value to 0 to turn off default mapping of :JsDoc

" typescript
  " mhartington/vim-typings
  map <space>t :Unite typings

" java
" artur-shaik/vim-javacomplete2
  autocmd FileType java setlocal omnifunc=javacomplete#Complete

  " To enable smart (trying to guess import option) inserting class imports with F4, add:
  nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
  imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

  " To enable usual (will ask for import option) inserting class imports with F5, add:
  nmap <F5> <Plug>(JavaComplete-Imports-Add)
  imap <F5> <Plug>(JavaComplete-Imports-Add)

  " To add all missing imports with F6:
  nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
  imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

  " To remove all missing imports with F7:
  nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
  imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" html/xml
" othree/xml.vim
  let g:xml_use_html = 1

" completion, snippets
" Valloric/YouCompleteMe
  " let g:ycm_autoclose_preview_window_after_completion = 1
  " let g:ycm_seed_identifiers_with_syntax = 1
  " let g:ycm_collect_identifiers_from_tags_files = 1
  " let g:ycm_complete_in_strings = 1
" Shougo/deoplete.nvim
  let g:deoplete#enable_at_startup = 1
  " let g:deoplete#enable_smart_case = 1
  let g:deoplete#enable_ignore_case = 1
  let g:deoplete#auto_complete_start_length = 0
  let g:deoplete#enable_refresh_always = 1
  " let g:deoplete#enable_debug = 1
  " let g:deoplete#enable_profile = 0
  let g:deoplete#max_abbr_width = 160
  let g:deoplete#max_menu_width = 80

  " call deoplete#enable_logging('DEBUG', '/Users/mr1483/deoplete.log')

" Shougo/neosnippet-snippets
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

  " For conceal markers.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif

" vim feature enhancement
" milkypostman/vim-togglelist
  nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
  nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

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
" kana/vim-narrow
  vmap <space>n :Narrow<CR>
  map <space>w :Widen<CR>

" file management
" Shougo/vimfiler.vim
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_safe_mode_by_default = 0
  nmap <space>f :VimFilerBufferDir -force-quit<CR>

" cursor motion
" matze/vim-move
  " <C-k>   Move current line/selections up
  " <C-j>   Move current line/selections down
  let g:move_key_modifier = 'C'
" haya14busa/incsearch-fuzzy.vim
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

  set hlsearch
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

  nmap <leader>n <plug>(easymotion-next)
  nmap <leader>b <plug>(easymotion-prev)

" auto pairs graveyard
" Raimondi/delimitMate
  let delimitMate_expand_cr = 1

" pasting
" troydm/zoomwintab.vim
  " <c-w>o
" svermeulen/vim-easyclip
  let g:EasyClipShareYanks = 1

  " Manually map yanks to avoid conflicts with tpope/unimpaired
  let g:EasyClipUseYankDefaults = 0
  nmap ,y <Plug>EasyClipRotateYanksBackward
  nmap y <Plug>YankPreserveCursorPosition
  nmap Y <Plug>:EasyClipBeforeYank<cr>y$

  nmap yy <Plug>YankLinePreserveCursorPosition
  xmap y <Plug>VisualModeYank
  imap <c-v> <plug>EasyClipInsertModePaste

  nnoremap <space>y :Yanks<cr>

  " Preserve default behaviour of S, use all other substitute bindings
  let g:EasyClipUseSubstituteDefaults = 0
  " nmap s <plug>SubstituteOverMotionMap
  " nmap gs <plug>G_SubstituteOverMotionMap

" searching
" junegunn/fzf.vim
  nmap <c-f> :Files<CR>
  " p for project files
  nmap <space>p :GitFiles<CR>
  " g for grep
  nmap <space>g :Ag<CR>
  " c-space
  nmap <c-@> :Buffers<CR>
" dkprice/vim-easygrep
  let g:EasyGrepCommand="ag"
  nmap <space>e :Grep<space>

" session management
" dhruvasagar/vim-prosession
  nmap <space>o :Obsession

" status bar
" bling/vim-airline
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'airlineish'
  let g:airline_exclude_preview = 1
  let g:airline#extensions#tabline#enabled = 1

" error reporting
" benekastah/neomake
  autocmd! BufWritePost * Neomake
  nmap <space>m :Neomake<cr>

  let g:neomake_typescript_enabled_makers = ['tslint', 'tsc']
  let g:neomake_javascript_enabled_makers = ['eslint']

  " load local eslint in the project root
  " modified from https://github.com/mtscout6/syntastic-local-eslint.vim
  let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
  let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

  let g:neomake_vim_enabled_makers = ['vint']  " pip install vim-vint
  let g:neomake_coffeescript_enabled_makers = ['coffeelint']
  let g:neomake_json_enabled_makers = ['jsonlint']
  let g:neomake_java_enabled_makers = ['javac']
  let g:neomake_sh_enabled_makers = ['shellcheck'] " https://github.com/koalaman/shellcheck
  let g:neomake_stylus_enabled_makers = ['stylint'] " npm install -g stylint
  let g:neomake_warning_sign={
        \ 'text': '⚠',
        \ 'texthl': 'NeomakeWarningMsg'
        \ }
  let g:neomake_error_sign = {
        \ 'text': '✖',
        \ 'texthl': 'ErrorMsg',
        \ }

" multiselect
" terryma/vim-multiple-cursors
  let  g:multi_cursor_exit_from_visual_mode = 0
  let  g:multi_cursor_exit_from_insert_mode = 0

" window management
" t9md/vim-choosewin
  let g:choosewin_overlay_enable = 1
  nmap  - :ChooseWin<CR>
  " nmap - <Plug>(choosewin)
  let g:choosewin_color_overlay = {
        \ 'gui': ['DodgerBlue3', 'DodgerBlue3' ],
        \ 'cterm': [ 25, 25 ]
        \ }
  let g:choosewin_color_overlay_current = {
        \ 'gui': ['firebrick1', 'firebrick1' ],
        \ 'cterm': [ 124, 124 ]
        \ }

  let g:choosewin_blink_on_land      = 1 " dont' blink at land
  let g:choosewin_statusline_replace = 0 " don't replace statusline
  let g:choosewin_tabline_replace    = 0 " don't replace tabline
" wesQ3/vim-windowswap
  let g:windowswap_map_keys = 0 "prevent default bindings
  nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
  nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
  nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" buffer management
" vim-scripts/bufkill.vim
  nnoremap <space>d :BW<CR>
