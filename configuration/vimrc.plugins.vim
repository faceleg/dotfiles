call dein#add('Shougo/dein.vim', { 'rtp': expand('~/.vim/bundle/dein.vim') })

" utilities
call dein#add('tpope/vim-unimpaired')
call dein#add('tpope/vim-repeat')
call dein#add('Shougo/unite.vim')
call dein#add('junegunn/vim-easy-align', { 'on_map': '<Plug>(EasyAlign)' })
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

" highlighting
call dein#add('faceleg/base16-vim') " forked from chriskempson/base16-vim

" formatting
call dein#add('ntpeters/vim-better-whitespace')

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
call dein#add('sgur/vim-lazygutter')
call dein#add('tpope/vim-fugitive')

" searching
call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'junegunn/fzf' })
call dein#add('dkprice/vim-easygrep')

" session management
call dein#add('dietsche/vim-lastplace')

" status bar
call dein#add('bling/vim-airline')
call dein#add('paranoida/vim-airlineish', { 'depends': 'vim-airline' })
call dein#add('ntpeters/vim-airline-colornum')

" multiselect
call dein#add('terryma/vim-multiple-cursors')

" window management
call dein#add('t9md/vim-choosewin')

" buffer management
call dein#add('vim-scripts/bufkill.vim')
call dein#add('jeetsukumaran/vim-buffergator')
