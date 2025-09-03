" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Show relative line numbers
set relativenumber

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=15

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Mouse support
set mouse=a
set ttymouse=sgr
set balloonevalterm

" my custom found stuff

set tabstop=4 " indentation width
set shiftwidth=4 " make the indentation the same
set expandtab " replace tabs with spaces
set smarttab " autotabs for certain  code
set showmatch " show matching bracket
set colorcolumn=80 " a line at 80 char for easier formatting

" aliasing the caps version of commands so it's not annoying to close vim
command W w
command Q q
command Wq wq
command WQ wq

" show whitespace characters
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<
set list
" white space characters color
highlight NonText ctermfg=DarkGrey
highlight SpecialKey ctermfg=DarkGrey

" install Plug https://github.com/junegunn/vim-plug
" then add lines below for unison highlighting
call plug#begin()                                                          
"                                                                           
" Plug 'unisonweb/unison', { 'branch': 'trunk', 'rtp': 'editor-support/vim' }
" Plug 'ocaml/vim-ocaml'


" setting up LSP server with autocomplete for C/C++
"
" Install LSP server
Plug 'prabirshrestha/vim-lsp'
" extension to handle configuring the LSP
Plug 'mattn/vim-lsp-settings'
" Adding autocomplete
Plug 'prabirshrestha/asyncomplete.vim'
" Adding snippets expansion
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" This also requiers to add shotcuts for it

" NOTE: You can use other key to expand snippet.
" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.clang = ['clang']
let g:vsnip_filetypes.typescriptreact = ['typescript']


" When edditing a file run to install LSP server for it
" :LspInstallServer

 call plug#end()


" follow instruction here to clone repo into right folder
" https://github.com/ycm-core/YouCompleteMe/issues/4134#issuecomment-1446235584
"" adding syntax highlighting for ts, js and zig
"packadd YouCompleteMe
"
" install zig.vim for auto format on save using zig binary
" https://github.com/ziglang/zig.vim
"
"" ensure zig is a recognized filetype
"" zls path cannont include ~ and probably no $HOME
"autocmd BufNewFile,BufRead *.zig set filetype=zig
"let g:ycm_language_server =
"    \ [
"    \{
"    \     'name': 'zls',
"    \     'filetypes': [ 'zig' ],
"    \     'cmdline': [ '/scibeta/zz/lib/zls/zls' ]
"    \    }
"    \ ]


" OCaml
set rtp^="/sgoinfre/znichola/.opam/default/share/ocp-indent/vim"
