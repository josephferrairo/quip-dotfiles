set nocompatible              " be iMproved, required
filetype off                  " required

set termguicolors
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/Xuyuanp/nerdtree-git-plugin.git'
Plug 'https://github.com/adelarsq/vim-matchit.git'
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'tarekbecker/vim-yaml-formatter'
Plug 'sbdchd/neoformat'
" Run prettier on save
autocmd BufWritePre *.js Neoformat

Plug 'dense-analysis/ale'
" let g:ale_linters = {
      " \   'ruby': ['rubocop']
      " \}
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/maximbaz/lightline-ale.git'
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['eslint']
let g:ale_fix_on_save = 1
let g:lightline = {
      \ 'colorscheme': 'nightfly',
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = {
              \ 'right': [ ['percent'], [ 'fileformat', 'fileencoding', 'filetype'],
              \ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }

Plug 'https://github.com/kien/ctrlp.vim.git'
" Ctags
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = [
      \ '--tag-relative=yes',
      \ '--fields=+ailmnS',
      \ ]
let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg',
      \ '*/tests/*',
      \ 'build',
      \ 'dist',
      \ '*sites/*/files/*',
      \ 'bin',
      \ 'node_modules',
      \ 'bower_components',
      \ 'cache',
      \ 'compiled',
      \ 'docs',
      \ 'example',
      \ 'bundle',
      \ 'vendor',
      \ '*.md',
      \ '*-lock.json',
      \ '*.lock',
      \ '*bundle*.js',
      \ '*build*.js',
      \ '.*rc*',
      \ '*.json',
      \ '*.min.*',
      \ '*.map',
      \ '*.bak',
      \ '*.zip',
      \ '*.pyc',
      \ '*.class',
      \ '*.sln',
      \ '*.Master',
      \ '*.csproj',
      \ '*.tmp',
      \ '*.csproj.user',
      \ '*.cache',
      \ '*.pdb',
      \ 'tags*',
      \ 'cscope.*',
      \ '*.css',
      \ '*.less',
      \ '*.scss',
      \ '*.exe', '*.dll',
      \ '*.mp3', '*.ogg', '*.flac',
      \ '*.swp', '*.swo',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png',
      \ '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx',
      \ ]
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_user_command = ['.git/', '/spec/cassettes/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

Plug 'https://github.com/rking/ag.vim.git'
Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'https://github.com/ntpeters/vim-better-whitespace.git'
Plug 'https://github.com/tpope/vim-commentary.git'
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
autocmd BufWritePre * StripWhitespace

map <C-C> :Commentary<CR>


Plug 'https://github.com/scrooloose/nerdtree.git'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

Plug 'https://github.com/vim-ruby/vim-ruby.git'
Plug 'https://github.com/tpope/vim-haml.git'
Plug 'https://github.com/stephpy/vim-yaml.git'
Plug 'https://github.com/ervandew/supertab.git'
" Plug 'terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/Raimondi/delimitMate.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/isRuslan/vim-es6.git'
Plug 'https://github.com/janko-m/vim-test.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'alvan/vim-closetag'
Plug 'mtdl9/vim-log-highlighting'
Plug 'https://github.com/ap/vim-css-color.git'

" Autocomplete
Plug 'maksimr/vim-jsbeautify'
map <c-f> :call JsBeautify()<cr>

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
let g:tern#command = ["tern"]
let g:deoplete#sources#ternjs#case_insensitive = 0
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#filetypes = [
      \ 'jsx',
      \ 'javascript.jsx',
      \ 'vue',
      \ 'html'
      \ ]

Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }

" vim-jsx stuff
Plug 'https://github.com/mxw/vim-jsx.git'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let g:sql_type_default = "sqlserver"
" Set .arb to Ruby
autocmd BufRead,BufNewFile *.arb setfiletype ruby
"Current syntax is gruvbox
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'https://github.com/nanotech/jellybeans.vim.git'
Plug 'https://github.com/sheerun/vim-polyglot.git'
Plug 'fgsch/vim-varnish'
Plug 'https://github.com/vim-scripts/RDoc.git'
" All of your Plugins must be added before the following line
call plug#end()

filetype plugin indent on    " required
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
set background=dark " Setting dark mode
set t_Co=256
" syntax on

" :syntax enable
" numbers on
set number
set relativenumber
" highlight search results
set hlsearch
" ignore case when searching
set ignorecase
" underline current line
set cursorline
set ttyfast
hi cursorlinenr gui=underline cterm=underline
" Can Copy and Paste from system clipboard
set clipboard=unnamed
" Comment with ctl + c and Uncomment with ctl + T
"map <C-C> :s:^:#<CR>
"map <C-T> :s:^#<CR>
" Allow navigating in and out of :terminal
tnoremap <Esc> <C-\><C-n>
" ================ Indentation ======================

set autoindent
set smartindent
" set smarttab
" set softtabstop=2
set tabstop=2 shiftwidth=2 expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on
" default syntax is ruby
" To ignore plugin indent changes, instead use:

highlight Comment gui=italic
highlight Comment cterm=italic
:syntax on
"NeoVim true color on
