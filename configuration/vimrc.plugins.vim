call dein#add('Shougo/dein.vim', { 'rtp': expand('~/.vim/bundle/dein.vim') })

" utilities
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-repeat')
call dein#add('Shougo/unite.vim')
call dein#add('junegunn/vim-easy-align', { 'on_map': '<Plug>(EasyAlign)' })
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('justinmk/vim-gtfo')

" highlighting
call dein#add('faceleg/base16-vim') " forked from chriskempson/base16-vim
call dein#add('godlygeek/csapprox')
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
call dein#add('jaxbot/semantic-highlight.vim')

" visual
call dein#add('miyakogi/conoline.vim')
call dein#add('vim-utils/vim-troll-stopper')

" text objects
call dein#add('tommcdo/vim-exchange')
call dein#add('kshenoy/vim-signature')
call dein#add('tpope/vim-surround')
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-operator-user')
call dein#add('wellle/targets.vim', { 'depends': 'kana/vim-textobj-user' })
call dein#add('b4winckler/vim-angry', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-line', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-entire', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-underscore', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-lastpat', { 'depends': 'kana/vim-textobj-user' })
call dein#add('Julian/vim-textobj-variable-segment', { 'depends': 'kana/vim-textobj-user' })
call dein#add('bkad/CamelCaseMotion')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-abolish', { 'depends': 'tpope/vim-repeat' })
call dein#add('Julian/vim-textobj-brace', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-indent', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-syntax', { 'depends': 'kana/vim-textobj-user' })
call dein#add('beloglazov/vim-textobj-quotes', { 'depends': 'kana/vim-textobj-user' })
call dein#add('saihoooooooo/vim-textobj-space', { 'depends': 'kana/vim-textobj-user' })
call dein#add('glts/vim-textobj-comment', { 'depends': 'kana/vim-textobj-user' })
call dein#add('beloglazov/vim-textobj-punctuation', { 'depends': 'kana/vim-textobj-user' })
call dein#add('kana/vim-textobj-function', { 'depends': 'kana/vim-textobj-user' })
call dein#add('thinca/vim-textobj-function-javascript', { 'depends': 'kana/vim-textobj-function' })
call dein#add('coderifous/textobj-word-column.vim', { 'depends': 'kana/vim-textobj-user' })

" formatting
call dein#add('ntpeters/vim-better-whitespace')
call dein#add('editorconfig/editorconfig-vim')

" ruby
call dein#add('tpope/vim-endwise', { 'on_ft': 'ruby' })
call dein#add('tpope/vim-rails', { 'on_ft': 'ruby' })
call dein#add('nelstrom/vim-textobj-rubyblock', { 'on_ft': 'ruby',
      \ 'depends': 'kana/vim-textobj-user' })
call dein#add('bootleq/vim-textobj-rubysymbol', { 'on_ft': 'ruby',
      \ 'depends': 'kana/vim-textobj-user' })

" whitespace languages
call dein#add('nathanaelkane/vim-indent-guides', { 'on_ft': ['yaml', 'python', 'ruby'] })

" json
call dein#add('elzr/vim-json', { 'on_ft': ['json'] })

" pug
call dein#add('digitaltoad/vim-pug', { 'on_ft': ['pug'] })

" less
call dein#add('groenewege/vim-less', { 'on_ft': ['less'] })

" javascript
call dein#add('marijnh/tern_for_vim', { 'build': 'npm install' })
call dein#add('othree/yajs.vim', { 'on_ft': ['javascript'] })

" typescript
call dein#add('leafgarland/typescript-vim', { 'on_ft': 'typescript' })
call dein#add('mhartington/nvim-typescript', { 'on_ft': 'typescript' })

" javascript & typescript
call dein#add('heavenshell/vim-jsdoc', { 'on_ft': 'javascript' })

" python
call dein#add('hdima/python-syntax', { 'on_ft': 'python' })

" html/xml
call dein#add('whatyouhide/vim-textobj-xmlattr', { 'depends': 'kana/vim-textobj-user' })
call dein#add('othree/xml.vim', { 'on_ft': ['html', 'xhtml', 'xml'] })
call dein#add('othree/html5.vim', { 'on_ft': ['html', 'xhtml', 'html5'] })
call dein#add('inkarkat/closetag.vim', { 'on_ft': ['html', 'xhtml', 'xml'] })

" completion, snippets
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-jedi', { 'on_ft': 'python' })
call dein#add('carlitux/deoplete-ternjs', { 'on_ft': 'javascript'})
call dein#add('othree/jspc.vim', { 'on_ft': ['javascript', 'typescript'] })
call dein#add('Shougo/neco-vim')
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets', { 'depends': 'Shougo/neosnippet' })
call dein#add('mhartington/deoplete-typescript')

" vim feature enhancement
call dein#add('milkypostman/vim-togglelist')
call dein#add('tpope/vim-commentary')
call dein#add('AndrewRadev/splitjoin.vim', { 'on_cmd': ['SplitjoinJoin', 'SplitjoinSplit'] })
call dein#add('AndrewRadev/switch.vim')
call dein#add('faceleg/delete-surrounding-function-call.vim')
call dein#add('AndrewRadev/sideways.vim', { 'on_cmd': ['SidewaysLeft', 'SidewaysRight'] })

" file management
call dein#add('Shougo/vimfiler.vim', { 'depends': 'Shougo/unite.vim' })
" call dein#add('scrooloose/nerdtree')
" call dein#add('EvanDotPro/nerdtree-chmod', { 'depends': 'scrooloose/nerdtree' })

" cursor motion
call dein#add('bruno-/vim-vertical-move')
call dein#add('dbakker/vim-paragraph-motion')
call dein#add('matze/vim-move')
call dein#add('haya14busa/incsearch.vim', { 'depends': 'kana/kana/vim-textobj-user' })
call dein#add('haya14busa/incsearch-fuzzy.vim', { 'depends': 'haya14busa/incsearch.vim' })
call dein#add('haya14busa/incsearch-easymotion.vim', { 'depends': 'haya14busa/incsearch.vim' })
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
call dein#add('tmhedberg/matchit', { 'on_ft': ['html', 'xhtml', 'xml', 'lua', 'vim', 'jsp'] })

" external programs
call dein#add('vim-scripts/TwitVim', { 'on_cmd': ['PostToTwitter'] })

" auto pairs graveyard
" call dein#add('eapache/auto-pairs')
"   let g:AutoPairsUseInsertedCount = 1
"   let g:AutoPairsShortcutFastWrap = '<Leader>e'
"   let g:delimitMate_expand_cr = 0
"   let g:delimitMate_jump_expansion = 0
call dein#add('Raimondi/delimitMate')
" call dein#add('Townk/vim-autoclose')
" call dein#add('cohama/lexima.vim') " breaks when adding ( at start of word
" call dein#add('kana/vim-smartinput')

" pasting
call dein#add('ConradIrwin/vim-bracketed-paste')
call dein#add('troydm/zoomwintab.vim')
call dein#add('Shougo/neoyank.vim')

" git integration
call dein#add('sgur/vim-lazygutter')
call dein#add('tpope/vim-fugitive')
call dein#add('gregsexton/gitv')

" searching
call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'junegunn/fzf' })
call dein#add('dkprice/vim-easygrep')

" session management
call dein#add('dietsche/vim-lastplace')
call dein#add('tpope/vim-obsession')
call dein#add('dhruvasagar/vim-prosession', { 'depends': 'tpope/vim-obsession' })

" status bar
call dein#add('bling/vim-airline')
call dein#add('paranoida/vim-airlineish', { 'depends': 'vim-airline' })
call dein#add('ntpeters/vim-airline-colornum')

" error reporting
call dein#add('w0rp/ale')

" multiselect
call dein#add('terryma/vim-multiple-cursors')

" window management
call dein#add('t9md/vim-choosewin')
call dein#add('wesQ3/vim-windowswap')

" buffer management
call dein#add('vim-scripts/bufkill.vim')
call dein#add('jeetsukumaran/vim-buffergator')
