call dein#add('Shougo/dein.vim', {'rtp': expand('~/.vim/bundle/dein.vim') })
call dein#add('Shougo/vimproc', {'build': 'make'})

" utilities
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-repeat')
call dein#add('Shougo/unite.vim')
call dein#add('junegunn/vim-easy-align', { 'on_map': '<Plug>(EasyAlign)' })
  " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
  vmap <Leader><Enter> <Plug>(EasyAlign)
  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)
call dein#add('tpope/vim-eunuch')

" navigation
call dein#add('kshenoy/vim-signature')
  let g:SignatureMap = {
      \ 'Leader'             :  "gm",
      \ 'PlaceNextMark'      :  "gm,",
      \ 'ToggleMarkAtLine'   :  "gm.",
      \ 'PurgeMarksAtLine'   :  "gm-",
      \ 'DeleteMark'         :  "dgm",
      \ 'PurgeMarks'         :  "gm<Space>",
      \ 'PurgeMarkers'       :  "gm<BS>",
      \ 'GotoNextLineAlpha'  :  "']",
      \ 'GotoPrevLineAlpha'  :  "'[",
      \ 'GotoNextSpotAlpha'  :  "`]",
      \ 'GotoPrevSpotAlpha'  :  "`[",
      \ 'GotoNextLineByPos'  :  "]'",
      \ 'GotoPrevLineByPos'  :  "['",
      \ 'GotoNextSpotByPos'  :  "]`",
      \ 'GotoPrevSpotByPos'  :  "[`",
      \ 'GotoNextMarker'     :  "]-",
      \ 'GotoPrevMarker'     :  "[-",
      \ 'GotoNextMarkerAny'  :  "]=",
      \ 'GotoPrevMarkerAny'  :  "[=",
      \ 'ListBufferMarks'    :  "gm/",
      \ 'ListBufferMarkers'  :  "gm?"
      \ }

call dein#add('fntlnz/atags.vim')
  let g:atags_build_commands_list = [
      \ 'ag -g "" | ctags -L - --fields=+l -f tags.tmp',
      \ 'awk "length($0) < 400" tags.tmp > tags',
      \ 'rm tags.tmp'
      \ ]
  map <Leader>t :call atags#generate()<cr>
  autocmd BufWritePost * call atags#generate()
call dein#add('majutsushi/tagbar')
  nmap <F8> :TagbarToggle<CR>

" NeoBundle 'rhysd/auto-neobundle', {
"       \ 'depends': ['Shougo/unite.vim', 'Shougo/vimproc']
"       \ }
" augroup AutoNeoBundle
"   autocmd!
"   autocmd VimEnter * call auto_neobundle#update_weekly()
" augroup END
" "}}}

" highlighting
call dein#add('chriskempson/base16-vim')
call dein#add('junegunn/rainbow_parentheses.vim', { 'on_ft': [
      \     'coffee',
      \     'java',
      \     'javascript',
      \     'json',
      \     'php',
      \     'ruby',
      \     'sass',
      \     'scss',
      \     'css',
      \     'vim'
      \ ] })
  autocmd FileType coffee,java,javascript,json,php,sass,scss,vim :RainbowParentheses
  let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
call dein#add('jaxbot/semantic-highlight.vim', { 'on_ft': [ 'javascript', 'typescript', 'java', 'ruby', 'php', 'vim', 'coffee' ] })
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
call dein#add('miyakogi/conoline.vim')
  let g:conoline_auto_enable = 1
  let g:conoline_use_colorscheme_default_normal = 1
  let g:conoline_use_colorscheme_default_insert = 1
call dein#add('vim-utils/vim-troll-stopper')

" text objects
call dein#add('tommcdo/vim-exchange')
  " To exchange two words, place your cursor on the first word and type cxiw.
  " Then move to the second word and type cxiw again. Note: the {motion} used
  " in the first and second use of cx don't have to be the same.
call dein#add('tpope/vim-surround')
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-operator-user')
call dein#add('wellle/targets.vim', { 'depends': 'kana/vim-textobj-user' })
  " ( ) b (work on parentheses)
  " { } B (work on curly braces)
  " [ ] (work on square brackets)
  " < > (work on angle brackets)
  " t (work on tags)<Paste>
call dein#add('b4winckler/vim-angry', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-line', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-entire', { 'depends': 'kana/vim-textobj-user' })
  " ie, ae
call dein#add('kana/vim-textobj-underscore', { 'depends': 'kana/vim-textobj-user' })
call dein#add('gilligan/textobj-gitgutter', { 'depends': 'kana/vim-textobj-user' })
  let g:textobj_gitgutter_no_default_key_mappings = 0
  omap ag <Plug>(textobj-gitgutter-i)
  omap ig <Plug>(textobj-gitgutter-i)
  vmap ag <Plug>(textobj-gitgutter-i)
  vmap ig <Plug>(textobj-gitgutter-i)
call dein#add('kana/vim-textobj-lastpat', { 'depends': 'kana/vim-textobj-user' })
  let g:textobj_lastpat_no_default_key_mappings = 0
  omap ah <Plug>(textobj-lastpat-n)
  omap ih <Plug>(textobj-lastpat-n)
  omap aH <Plug>(textobj-lastpat-N)
  omap iH <Plug>(textobj-lastpat-N)
  vmap ah <Plug>(textobj-lastpat-n)
  vmap ih <Plug>(textobj-lastpat-n)
  vmap aH <Plug>(textobj-lastpat-N)
  vmap iH <Plug>(textobj-lastpat-N)
call dein#add('Julian/vim-textobj-variable-segment', { 'depends': 'kana/vim-textobj-user' })
  " iv, av
call dein#add('bkad/CamelCaseMotion')
  " ,e
  " ,w
  " ... etc
call dein#add('tyru/operator-camelize.vim', { 'depends': 'kana/vim-operator-user' })
  map <leader>c <Plug>(operator-camelize-toggle)
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-abolish', { 'depends': 'tpope/vim-repeat' })
  " crs coerce to sname_case
  " crm
  " crc
  " cr_
  " crs
  " cru
  " cr-
  " crk
  " cr.
call dein#add('Julian/vim-textobj-brace', { 'depends': 'kana/vim-textobj-user' })
  " ij, aj
call dein#add('kana/vim-textobj-indent', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-syntax', { 'depends': 'kana/vim-textobj-user' })
  " iy, ay
call dein#add('beloglazov/vim-textobj-quotes', { 'depends': 'kana/vim-textobj-user' })
call dein#add('saihoooooooo/vim-textobj-space', { 'depends': 'kana/vim-textobj-user' })
  " iq, aq
call dein#add('glts/vim-textobj-comment', { 'depends': 'kana/vim-textobj-user' })
  " iS, aS
call dein#add('beloglazov/vim-textobj-punctuation', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-function', { 'depends': 'kana/vim-textobj-user' })
call dein#add('thinca/vim-textobj-function-javascript', { 'on_ft': ['javascript', 'typescript'], 'depends': 'kana/vim-textobj-function' })

" formatting
call dein#add('ntpeters/vim-better-whitespace')
  autocmd FileType c,coffee,cpp,css,less,sass,scss,java,php,ruby,puppet,typescript,javascript,vim,sh,nginx,ant,xml autocmd BufWritePre <buffer> StripWhitespace
  let g:better_whitespace_filetypes_blacklist = ['unite']
call dein#add('editorconfig/editorconfig-vim')
call dein#add('Chiel92/vim-autoformat', { 'on_ft': ['javascript', 'ruby', 'typescript', 'html'],
      \ 'build': 'npm --no-color install -g jscs cssfmt js-beautify typescript-formatter' })
  autocmd FileType css,ruby,javascript,typescript noremap <buffer> ,af :Autoformat<CR>
" call dein#add('tpope/vim-sleuth')

" languages
call dein#add('sheerun/vim-polyglot')
  au BufNewFile,BufRead *.vm set ft=velocity
  au BufNewFile,BufRead *.coffee set ft=coffee
  au BufNewFile,BufRead *.html set ft=html
  let g:polyglot_disabled = ['jinja', 'json', 'javascript']

" css
call dein#add('ap/vim-css-color')

" ruby
call dein#add('tpope/vim-endwise', { 'on_ft': 'ruby' })
call dein#add('tpope/vim-rails', { 'on_ft': 'ruby' })
call dein#add('nelstrom/vim-textobj-rubyblock', { 'on_ft': 'ruby',
      \ 'depends': 'kana/vim-textobj-user' })
call dein#add('bootleq/vim-textobj-rubysymbol', { 'on_ft': 'ruby',
      \ 'depends': 'kana/vim-textobj-user' })

" json
call dein#add('elzr/vim-json', { 'on_ft': ['json'] })
  let g:vim_json_syntax_conceal = 0

" javascript
call dein#add('othree/yajs.vim', { 'on_ft': 'javascript' })
call dein#add('marijnh/tern_for_vim', { 'on_ft': 'javascript', 'build': 'npm install' })
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

" typescript
call dein#add('Quramy/tsuquyomi')
  " A way to open a target file when |:TsuquyomiDefinitio|.
  " * 0: |:edit|
  " * 1: |:split|
  " * 2: |:vplit|
  " * 3: |:tabedit|
  let g:tsuquyomi_definition_split = 3

  " <C-]>			<Plug>(TsuquyomiDefinition)
  " <C-t>			<Plug>(TsuquyomiGoBack)
  " <C-^>			<Plug>(TsuquyomiReferences)

  autocmd FileType typescript nmap <buffer> <space>t : <C-u>echo tsuquyomi#hint()<CR>
  autocmd CursorHold *.ts :echo tsuquyomi#hint()

" javascript & typescript
call dein#add('othree/jsdoc-syntax.vim', { 'on_ft': ['javascript', 'typescript'] })
call dein#add('heavenshell/vim-jsdoc', { 'on_ft': ['javascript', 'typescript'] })
  let g:jsdoc_allow_input_prompt = 1
  let g:jsdoc_input_description = 1
  let g:jsdoc_additional_descriptions = 0
  let g:jsdoc_return = 1
  let g:jsdoc_return_type = 1
  let g:jsdoc_return_description = 1
  let g:jsdoc_default_mapping = 0 " default: 1 Set value to 0 to turn off default mapping of :JsDoc

" html/xml
call dein#add('whatyouhide/vim-textobj-xmlattr', { 'depends': 'kana/vim-textobj-user' })
call dein#add('othree/xml.vim', { 'on_ft': ['html', 'xhtml', 'xml'] })
  let g:xml_use_html = 1
call dein#add('othree/html5.vim', { 'on_ft': ['html', 'xhtml', 'html5'] })
call dein#add('inkarkat/closetag.vim', { 'on_ft': ['html', 'xhtml', 'xml'] })

" completion, snippets
call dein#add('c9s/vimomni.vim')
call dein#add('Valloric/YouCompleteMe', { 'build': './install.py --tern-completer' })
  let g:ycm_autoclose_preview_window_after_completion = 1
  let g:ycm_seed_identifiers_with_syntax = 1
  let g:ycm_collect_identifiers_from_tags_files = 1
  let g:ycm_complete_in_strings = 1
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
  " Plugin key-mappings.
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
call dein#add('milkypostman/vim-togglelist')
  nmap <script> <silent> <leader>l :call ToggleLocationList()<CR>
  nmap <script> <silent> <leader>q :call ToggleQuickfixList()<CR>

  " force quickfix to be at bottom and take up entire width
  au FileType qf wincmd J
call dein#add('tpope/vim-commentary')
call dein#add('AndrewRadev/splitjoin.vim', { 'on_cmd': ['SplitjoinJoin', 'SplitjoinSplit'] })
  nmap gS :SplitjoinSplit<cr>
  nmap gJ :SplitjoinJoin<cr>
call dein#add('AndrewRadev/switch.vim')
  " gs to switch booleans and ... other things
call dein#add('faceleg/delete-surrounding-function-call.vim')
call dein#add('AndrewRadev/sideways.vim', { 'on_cmd': ['SidewaysLeft', 'SidewaysRight'] })
  nmap <c-h> :SidewaysLeft<cr>
  nmap <c-l> :SidewaysRight<cr>
call dein#add('kana/vim-narrow', { 'on_cmd': ['Narrow', 'Widen'] })
  vmap <space>n :Narrow<CR>
  map <space>w :Widen<CR>

" file management
call dein#add('Shougo/vimfiler.vim', { 'depends': 'Shougo/unite.vim' }) " , { 'on_cmd': ['VimFilerBufferDir'], 'depends': 'Shougo/unite.vim' })
  let g:vimfiler_as_default_explorer = 1
  let g:vimfiler_safe_mode_by_default = 0
  nmap <space>f :VimFilerBufferDir -force-quit<CR>

" cursor motion
call dein#add('bruno-/vim-vertical-move')
call dein#add('dbakker/vim-paragraph-motion')
call dein#add('matze/vim-move')
  " <C-k>   Move current line/selections up
  " <C-j>   Move current line/selections down
  let g:move_key_modifier = 'C'
call dein#add('haya14busa/incsearch.vim', { 'depends': 'kana/kana/vim-textobj-user' })
call dein#add('haya14busa/incsearch-fuzzy.vim', { 'depends': 'haya14busa/incsearch.vim' })
  map f/ <Plug>(incsearch-fuzzy-/)
  map f? <Plug>(incsearch-fuzzy-?)
  map fg/ <Plug>(incsearch-fuzzy-stay)

call dein#add('haya14busa/incsearch-easymotion.vim', { 'depends': 'haya14busa/incsearch.vim' })
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
" call dein#add('haya14busa/vim-easyoperator-line', { 'depends': 'kana/kana/vim-textobj-user' })
call dein#add('Lokaltog/vim-easymotion', { 'on_map': [
      \   '<Plug>(easymotion-bd-f)',
      \   '<Plug>(easymotion-overwin-f)',
      \   '<Plug>(easymotion-overwin-f2)',
      \   '<Plug>(easymotion-overwin-bd-jk)',
      \   '<Plug>(easymotion-overwin-line)',
      \   '<Plug>(easymotion-overwin-bd-w)',
      \   '<Plug>(easymotion-overwin-w)',
      \   '<Plug>(easymotion-sn)',
      \   '<Plug>(easymotion-tn)',
      \   '<Plug>(easymotion-next)',
      \   '<Plug>(easymotion-prev)',
      \   '<Plug>(easymotion-s)',
      \   '<Plug>(easymotion-t)',
      \   '<Plug>(easymotion-s2)',
      \   '<Plug>(easymotion-t2)',
      \   '<Plug>(easymotion-lineforward)',
      \   '<Plug>(easymotion-j)',
      \   '<Plug>(easymotion-k)',
      \   '<Plug>(easymotion-linebackward)',
      \   '<Plug>(easymotion-next)',
      \ ] })
      " \ ], 'depends': 'haya14busa/vim-easyoperator-line' })
  let g:EasyMotion_smartcase = 1

  " <Leader>f{char} to move to {char}
  map  <Leader>f <Plug>(easymotion-bd-f)
  nmap <Leader>f <Plug>(easymotion-overwin-f)

  " s{char}{char} to move to {char}{char}
  map <Leader>s <Plug>(easymotion-s2)
  nmap <Leader>s <Plug>(easymotion-overwin-f2)

  " Move to line
  map <Leader>n <Plug>(easymotion-bd-jk)
  nmap <Leader>n <Plug>(easymotion-overwin-line)

  " Move to word
  map  <Leader>w <Plug>(easymotion-bd-w)
  nmap <Leader>w <Plug>(easymotion-overwin-w)

  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)

call dein#add('tmhedberg/matchit', { 'on_ft': ['html', 'xhtml', 'xml', 'lua', 'vim', 'jsp'] })

" external programs
call dein#add('vim-scripts/TwitVim', { 'on_cmd': ['PostToTwitter'] })

" auto pairs graveyard
" call dein#add('eapache/auto-pairs')
  " let g:AutoPairsUseInsertedCount = 1
  " let g:AutoPairsShortcutFastWrap = '<Leader>e'
"   let g:delimitMate_expand_cr = 0
"   let g:delimitMate_jump_expansion = 0
call dein#add('Raimondi/delimitMate')
  map <Leader>j <Plug>delimitMateJumpMany
" call dein#add('Townk/vim-autoclose')
" call dein#add('cohama/lexima.vim') " breaks when adding ( at start of word
" call dein#add('kana/vim-smartinput')

" pasting
call dein#add('ConradIrwin/vim-bracketed-paste')
call dein#add('troydm/zoomwintab.vim')
  " <c-w>o
call dein#add('svermeulen/vim-easyclip', { 'depends': 'tpope/vim-repeat' })
  let g:EasyClipShareYanks = 1

  " Manually map yanks to avoid conflicts with tpope/unimpaired
  let g:EasyClipUseYankDefaults = 0
  nmap ;y <Plug>EasyClipRotateYanksForward
  nmap ,y <Plug>EasyClipRotateYanksBackward
  nmap y <Plug>YankPreserveCursorPosition
  nmap Y <Plug>:EasyClipBeforeYank<cr>y$

  nmap yy <Plug>YankLinePreserveCursorPosition
  xmap y <Plug>VisualModeYank
  imap <c-v> <plug>EasyClipInsertModePaste

  nnoremap <space>y :Yanks<cr>

  " Preserve default behaviour of S, use all other substitute bindings
  let g:EasyClipUseSubstituteDefaults = 0
  nmap s <plug>SubstituteOverMotionMap
  nmap gs <plug>G_SubstituteOverMotionMap

" git integration
call dein#add('sgur/vim-lazygutter')
call dein#add('tpope/vim-fugitive')
call dein#add('gregsexton/gitv')
call dein#add('jaxbot/github-issues.vim')
  " github access token
  let s:githubTokenFile = $HOME . '/.config/nvim/config/github.vim'
  if !empty(glob(s:githubTokenFile))
    exec 'source ' . s:githubTokenFile
  else
    echom 'No file found at ' . s:githubTokenFile . ', github integration will not work for private repositories'
  endif

" fzf
call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'junegunn/fzf' })
  nmap <c-f> :Files<CR>
  " p for project files
  nmap <space>p :GitFiles<CR>
  " g for grep
  nmap <space>g :Ag<CR>
  " c-space
  nmap <c-@> :Buffers<CR>

" session management
call dein#add('dietsche/vim-lastplace')
call dein#add('tpope/vim-obsession')
call dein#add('dhruvasagar/vim-prosession', { 'depends': 'tpope/vim-obsession' })
  nmap <space>o :Obsession

" status bar
call dein#add('bling/vim-airline')
  set laststatus=2
  let g:airline_powerline_fonts = 1
  let g:airline_theme = 'airlineish'
  let g:airline_exclude_preview = 1
  let g:airline#extensions#tabline#enabled = 1
call dein#add('paranoida/vim-airlineish', { 'depends': 'vim-airline' })
call dein#add('ntpeters/vim-airline-colornum')

" error reporting
call dein#add('benekastah/neomake', { 'on_ft': [
      \     'javascript',
      \     'typescript',
      \     'coffeescript',
      \     'bash',
      \     'json',
      \     'java',
      \     'vim',
      \     'html',
      \     'xhtml',
      \ ],
      \ 'build': 'npm --no-color install jsonlint eslint tslint stylint -g'
      \ })

  autocmd! BufWritePost * Neomake
  nmap <space>m :Neomake<cr>

  let g:neomake_typescript_enabled_makers = ['tslint']
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
call dein#add('terryma/vim-multiple-cursors')
  let  g:multi_cursor_exit_from_visual_mode = 0
  let  g:multi_cursor_exit_from_insert_mode = 0

" window management
call dein#add('t9md/vim-choosewin', {'on_map': '<Plug>(choosewin)'})
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
call dein#add('wesQ3/vim-windowswap')
  let g:windowswap_map_keys = 0 "prevent default bindings
  nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
  nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
  nnoremap <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" buffer management
call dein#add('vim-scripts/bufkill.vim')
  nnoremap <space>d :BW<CR>
