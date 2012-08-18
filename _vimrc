" Vi互換モードをオフ（Vimの拡張機能を有効）
 set nocompatible
 
" ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効にする
 filetype indent plugin on
 
 " Enable syntax highlighting
 " 色づけをオン
syntax on
 
 
" バッファを保存しなくても他のバッファを表示できるようにする
 set hidden
 
" コマンドライン補完を便利に
 set wildmenu
 
" タイプ途中のコマンドを画面最下行に表示
 set showcmd
 
" 検索語を強調表示（<C-L>を押すと現在の強調表示を解除する）
 set hlsearch

" 検索時に大文字・小文字を区別しない。ただし、検索後に大文字小文字が
 " 混在しているときは区別する
 set ignorecase
 set smartcase
 
" オートインデント、改行、インサートモード開始直後にバックスペースキーで
" 削除できるようにする。
 set backspace=indent,eol,start
 
" オートインデント
 set autoindent

" 新しい行を作ったときに高度な自動インデントを行う
set smartindent
 
" 移動コマンドを使ったとき、行頭に移動しない
 set nostartofline
 
" 画面最下行にルーラーを表示する
 set ruler
 
" ステータスラインを常に表示する
 set laststatus=2
 
" バッファが変更されているとき、コマンドをエラーにするのでなく、保存する
" かどうか確認を求める
 set confirm
 
" ビープの代わりにビジュアルベル（画面フラッシュ）を使う
 set visualbell
 
" そしてビジュアルベルも無効化する
 set t_vb=
 
" 全モードでマウスを有効化
 set mouse=a
 
" コマンドラインの高さを2行に
 set cmdheight=2
 
" 行番号を表示
 set number
 
" キーコードはすぐにタイムアウト。マッピングはタイムアウトしない
 set notimeout ttimeout ttimeoutlen=200
 
" <F11>キーで'paste'と'nopaste'を切り替える
 set pastetoggle=<F11>
 
" タブ文字の代わりにスペース2個を使う場合の設定。
" この場合、'tabstop'はデフォルトの8から変えない。
 set shiftwidth=2
 set softtabstop=2
 set expandtab
 
" インデントにハードタブを使う場合の設定。
" タブ文字を2文字分の幅で表示する。
set shiftwidth=2
set tabstop=2
 
 
" Yの動作をDやCと同じにする
 map Y y$
 
" <C-L>で検索後の強調表示を解除する
 nnoremap <C-L> :nohl<CR><C-L>

"括弧自動保管
 inoremap { {}<LEFT>
 inoremap [ []<LEFT>
 inoremap ( ()<LEFT>
 inoremap " ""<LEFT>
 inoremap ' ''<LEFT>
 vnoremap { "zdi^V{<C-R>z}<ESC>
 vnoremap [ "zdi^V[<C-R>z]<ESC>
 vnoremap ( "zdi^V(<C-R>z)<ESC>
 vnoremap " "zdi^V"<C-R>z^V"<ESC>
 vnoremap ' "zdi'<C-R>z'<ESC>


map ^[[A <up>
map ^[[B <down>
map ^[[C <right>
map ^[[D <left>ap ^[[A <up>
map ^[[B <down>
map ^[[C <right>
map ^[[D <left>

set tabstop=2
"tabが押されたときに実際に挿入される空白の文字数
set softtabstop=2
""オートインデント時に挿入される空白文字数
set shiftwidth=2
"tabの代わりに半角スペースを挿入する"""
set clipboard=unnamed

"設定ファイル読み込み（HTML）
autocmd BufNewFile *.html 0r ~/.vim/templates/skel.html






"javascriptエラーチェック
autocmd FileType javascript :compiler javascriptlint

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

augroup SkeletonAu
      autocmd!
          autocmd BufNewFile *.html 0r $HOME/vimfiles/templates/skel.html
        augroup END





let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2

 "------------------------------------------------------------

