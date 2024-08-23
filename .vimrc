syntax on                     " シンタックスハイライトを有効にする
set number                    " 行番号を表示する
set tabstop=4                 " タブをスペース4つ分に設定
set shiftwidth=4              " 自動インデントで使用するスペースの数
set expandtab                 " タブの代わりにスペースを使用する
set autoindent                " 新しい行で現在の行のインデントをコピーする
set smartindent               " 新しい行でスマートインデントを有効にする
set hlsearch                  " 検索結果をハイライトする
set incsearch                 " インクリメンタル検索を有効にする
set ignorecase                " 検索時に大文字小文字を無視する
set smartcase                 " 検索パターンに大文字が含まれる場合はignorecaseを無視する
set clipboard=unnamedplus     " システムクリップボードを使用する
set cursorline                " 現在の行をハイライトする
set showmatch                 " 対応する括弧をハイライトする
set wildmenu                  " コマンドライン補完を有効にする
set wildmode=list:longest     " コマンドライン補完モード

set background=dark           " 背景色を暗く設定する
set termguicolors             " 24ビットRGBカラーを有効にする
set laststatus=2              " 常にステータスラインを表示する
set ruler                     " カーソル位置の行と列番号を表示する

set mouse=a                   " マウスサポートを有効にする
set splitbelow                " 水平方向の分割を下に設定する
set splitright                " 垂直方向の分割を右に設定する

set noswapfile                " スワップファイルを無効にする
filetype plugin indent on     " ファイルタイプの検出、プラグイン、インデントを有効にする

" プラグイン（プラグインマネージャーを使用する場合、例えばvim-plug）
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim'
Plug 'nordtheme/vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme nord

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

nnoremap te :tabedit<CR>
nnoremap sv :vsplit<CR>
nnoremap ss :split<CR>
nnoremap <Tab> :tabnext<CR>
nnoremap <s-Tab> :tabprev<CR>
nnoremap sf :e .<CR>
nnoremap sh <C-w>h
nnoremap sk <C-w>k
nnoremap sj <C-w>j
nnoremap sl <C-w>l
