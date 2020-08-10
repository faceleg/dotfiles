call dein#add('Shougo/dein.vim', { 'rtp': expand('~/.vim/bundle/dein.vim') })

" utilities
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-repeat')
call dein#add('Shougo/unite.vim')
call dein#add('junegunn/vim-easy-align', { 'on_map': '<Plug>(EasyAlign)' })
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Shougo/vimfiler.vim')
call dein#add('matze/vim-move')
call dein#add('jiangmiao/auto-pairs')
" call dein#add('cohama/lexima.vim')

" syntax
call dein#add('sheerun/vim-polyglot')

" textobj
call dein#add('kana/vim-textobj-user')
call dein#add('whatyouhide/vim-textobj-xmlattr')
call dein#add('wellle/targets.vim')
call dein#add('kana/vim-textobj-entire')
call dein#add('kana/vim-textobj-lastpat')
call dein#add('Julian/vim-textobj-variable-segment')
call dein#add('bkad/CamelCaseMotion')
" call dein#add('tyru/operator-camelize.vim')
call dein#add('tpope/vim-abolish')
call dein#add('Julian/vim-textobj-brace')
call dein#add('kana/vim-textobj-syntax')
call dein#add('saihoooooooo/vim-textobj-space')
call dein#add('glts/vim-textobj-comment')

" highlighting
call dein#add('faceleg/base16-vim') " forked from chriskempson/base16-vim
call dein#add('junegunn/rainbow_parentheses.vim')
call dein#add('jaxbot/semantic-highlight.vim')

" linting
call dein#add('dense-analysis/ale')

" code completion
call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
call dein#add('honza/vim-snippets')

" formatting
call dein#add('ntpeters/vim-better-whitespace')
call dein#add('rhysd/vim-clang-format')

" json
call dein#add('elzr/vim-json', { 'on_ft': ['json'] })

" vim feature enhancement
call dein#add('tpope/vim-commentary')
call dein#add('AndrewRadev/switch.vim')

" pasting
call dein#add('ConradIrwin/vim-bracketed-paste')
call dein#add('troydm/zoomwintab.vim')
call dein#add('Shougo/neoyank.vim')

" git integration
call dein#add('airblade/vim-gitgutter')

call dein#add('tpope/vim-fugitive')

" searching
call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'junegunn/fzf' })
call dein#add('dkprice/vim-easygrep')

call dein#add('haya14busa/incsearch.vim')
call dein#add('easymotion/vim-easymotion')
call dein#add('haya14busa/incsearch-easymotion.vim')
call dein#add('haya14busa/incsearch-fuzzy.vim')

" session management
call dein#add('dietsche/vim-lastplace')
call dein#add('tpope/vim-obsession')
call dein#add('dhruvasagar/vim-prosession')
call dein#add('vim-ctrlspace/vim-ctrlspace')

" status bar
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('apriendeau/colorline', { 'depends': 'vim-airline' })
" call dein#add('ntpeters/vim-airline-colornum')

" multiselect
call dein#add('terryma/vim-multiple-cursors')

" window management
call dein#add('t9md/vim-choosewin')

" buffer management
call dein#add('vim-scripts/bufkill.vim')
call dein#add('jeetsukumaran/vim-buffergator')

" formatting
 call dein#add('prettier/vim-prettier', { 'build': 'yarn install' })
