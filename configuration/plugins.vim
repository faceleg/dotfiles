" Plug 'Shougo/dein.vim', { 'rtp': expand('~/.vim/bundle/dein.vim') })

" utilities
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Shougo/unite.vim'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/vimfiler.vim'
Plug 'matze/vim-move'
Plug 'jiangmiao/auto-pairs'
" Plug 'cohama/lexima.vim'

" syntax
" Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" textobj
Plug 'kana/vim-textobj-user'
Plug 'whatyouhide/vim-textobj-xmlattr'
Plug 'wellle/targets.vim'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-lastpat'
Plug 'Julian/vim-textobj-variable-segment'
Plug 'bkad/CamelCaseMotion'
" Plug 'tyru/operator-camelize.vim')
Plug 'tpope/vim-abolish'
Plug 'Julian/vim-textobj-brace'
Plug 'kana/vim-textobj-syntax'
Plug 'saihoooooooo/vim-textobj-space'
Plug 'glts/vim-textobj-comment'

" highlighting
" Plug 'faceleg/base16-vim' " forked from chriskempson/base16-vim
Plug 'chriskempson/base16-vim'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'jaxbot/semantic-highlight.vim'

" code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'honza/vim-snippets'
Plug 'kkoomen/vim-doge'

" formatting
Plug 'ntpeters/vim-better-whitespace'
Plug 'rhysd/vim-clang-format'

" json
" Plug 'elzr/vim-json', { 'on_ft': ['json'] }

" vim feature enhancement
Plug 'tpope/vim-commentary'
Plug 'AndrewRadev/switch.vim'

" pasting
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'troydm/zoomwintab.vim'
Plug 'Shougo/neoyank.vim'

" git integration
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dkprice/vim-easygrep'
Plug 'haya14busa/incsearch.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'

" " session management
Plug 'dietsche/vim-lastplace'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'vim-ctrlspace/vim-ctrlspace'

" " status bar
Plug 'apriendeau/colorline'
  \| Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-airline-colornum'

" multiselect
Plug 'terryma/vim-multiple-cursors'

" window management
Plug 't9md/vim-choosewin'

" " buffer management
Plug 'vim-scripts/bufkill.vim'
Plug 'jeetsukumaran/vim-buffergator'

" formatting
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

