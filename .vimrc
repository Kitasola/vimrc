syntax on

".vim指定"
set runtimepath+=~/vimrc/.vim

"色設定"
colorscheme molokai
set t_Co=256

set backspace=indent,eol,start "backspaceの設定"
set nocompatible "viの互換モードをOFF"
"set mouse=a マウスを有効化"
set ruler  "カーソルが何行目の何列目かを表示する"
set nowrap "長い行が折り返されない"
set showmatch " ) が入力されたら ( に飛ぶ"

"----------インデント関連---------"
set autoindent
set expandtab
set smartindent
set tabstop=2
set shiftwidth=2
set spell

"----------検索関連----------"
set hlsearch "検索語を強調表示"
set ignorecase "検索で大文字と小文字を区別しない"
set smartcase "大文字で検索すれば区別する"
set history=2000 "検索履歴の数"

set helplang=en "helpの言語"
set relativenumber "相対行番号を表示"
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
exec "imap " . k . " " . k . "<C-N><C-P>"
endfor

imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

"qキーを二度押しでESCキーに"
inoremap <silent>qq <Esc>
inoremap <silent>っｑ <Esc>
"ハイライト削除"
nnoremap <silent><Esc><Esc> :noh<Enter>
"保存"
inoremap <silent>ww <Esc>:w<Enter>i
"c-Template"
nnoremap <silent>ctemp i#include<stdio.h><Enter><Enter>int main(void){<Enter><Enter>return 0;<Enter>}<Up><Up><Tab>
"翻訳機能 (trans:https://github.com/soimort/translate-shell)"
:command -nargs=1 Trans :r! trans -b :en <f-args>
