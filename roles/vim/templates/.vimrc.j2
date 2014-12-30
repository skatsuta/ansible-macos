"==========================================================================
"  Description: Vim の設定ファイル
"       Author: Soshi Katsuta
"==========================================================================
"
" Vi 互換にしない
set nocompatible
scriptencoding utf-8
" gVim のときのみ文字コードを utf-8 にする
""if has('gui_running') && !has('unix')
if has('gui_running')
  set encoding=utf-8
  set fileencodings=utf-8
endif
set fileformat=unix
"scriptencodingと、このファイルのエンコーディングが一致するよう注意！
"scriptencodingは、vimの内部エンコーディングと同じものを推奨します。
"改行コードは set fileformat=unix に設定するとunixでも使えます。

"----------------------------------------
" ユーザーランタイムパス設定
"----------------------------------------
"Windows, unixでのruntimepathの違いを吸収するためのもの。
"$MY_VIMRUNTIMEはユーザーランタイムディレクトリを示す。
":echo $MY_VIMRUNTIMEで実際のパスを確認できます。
if isdirectory($HOME . '/.vim')
  let $MY_VIMRUNTIME = $HOME.'/.vim'
elseif isdirectory($HOME . '\vimfiles')
  let $MY_VIMRUNTIME = $HOME.'\vimfiles'
elseif isdirectory($VIM . '\vimfiles')
  let $MY_VIMRUNTIME = $VIM.'\vimfiles'
endif

"ランタイムパスを通す必要のあるプラグインを使用する場合、
"$MY_VIMRUNTIMEを使用すると Windows/Linuxで切り分ける必要が無くなります。
"例) vimfiles/qfixapp (Linuxでは~/.vim/qfixapp)にランタイムパスを通す場合
"set runtimepath+=$MY_VIMRUNTIME/qfixapp

"----------------------------------------
" 内部エンコーディング指定
"----------------------------------------
"内部エンコーディングのUTF-8化と文字コードの自動認識設定をencode.vimで行う。
"オールインワンパッケージの場合 vimrcで設定されているので何もしない。
"エンコーディング指定や文字コードの自動認識設定が適切に設定されている場合、
"次行の encode.vim 読込部分はコメントアウトして下さい。
"silent! source $MY_VIMRUNTIME/plugin/encode.vim
"scriptencodingと異なる内部エンコーディングに変更する場合、
"変更後にもscriptencodingを指定しておくと問題が起きにくくなります。
"scriptencoding cp932

"----------------------------------------
" システム設定
"----------------------------------------
"mswin.vimを読み込む
"source $VIMRUNTIME/mswin.vim
"behave mswin

"ファイルの上書きの前にバックアップを作る/作らない
"set writebackupを指定してもオプション 'backup' がオンでない限り、
"バックアップは上書きに成功した後に削除される。
"set nowritebackup
"バックアップ/スワップファイルを作成する/しない
"set nobackup
if version >= 703
  "再読込、vim終了後も継続するアンドゥ(7.3)
  set undofile
  "アンドゥの保存場所(7.3)
  set undodir=./.vimundo
  "Delete comment character when joining commented lines
  set formatoptions+=j
endif
" .swp ファイルを作成しない
"set noswapfile
"viminfoを作成しない
"set viminfo=
" tmux が起動していないときのみクリップボードを共有する
if $TMUX == ''
  set clipboard+=unnamed
endif
"8進数を無効にする。<C-a>,<C-x>に影響する
set nrformats-=octal
"キーコードやマッピングされたキー列が完了するのを待つ時間(ミリ秒)
set timeoutlen=3500
"編集結果非保存のバッファから、新しいバッファを開くときに警告を出さない
set hidden
"ヒストリの保存数
set history=10000
"日本語の行の連結時には空白を入力しない
set formatoptions+=mM
"Visual blockモードでフリーカーソルを有効にする
set virtualedit=block
"カーソルキーで行末／行頭の移動可能に設定
"set whichwrap=b,s,[,],<,>
"バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
"□や○の文字があってもカーソル位置がずれないようにする
set ambiwidth=double
"コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
"マウスを有効にする
if has('mouse')
  set mouse=a
endif
" バックアップディレクトリ
set backupdir=/tmp
set directory=/tmp
" マウスモード有効
set mouse=a
" screen 対応
set ttymouse=xterm2
" 遅延再描画を有効化する
set lazyredraw
" ターミナルとの接続を素早くする
set ttyfast


"----------------------------------------
" 検索
"----------------------------------------
"検索の時に大文字小文字を区別しない
"ただし大文字小文字の両方が含まれている場合は大文字小文字を区別する
set ignorecase
set smartcase
"検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
"インクリメンタルサーチ
set incsearch
"検索文字の強調表示
set nohlsearch
"w,bの移動で認識する文字
"set iskeyword=a-z,A-Z,48-57,_,.,-,>
"vimgrep をデフォルトのgrepとする場合internal
"set grepprg=internal

"----------------------------------------
" 表示設定
"----------------------------------------
"スプラッシュ(起動時のメッセージ)を表示しない
set shortmess+=I
"エラー時の音とビジュアルベルの抑制(gvimは.gvimrcで設定)
set noerrorbells
set novisualbell
set visualbell t_vb=
"マクロ実行中などの画面再描画を行わない
"set lazyredraw
"Windowsでディレクトリパスの区切り文字表示に / を使えるようにする
set shellslash
"行番号表示
set number
if version >= 703
  "相対行番号表示(7.3)
  "set relativenumber
endif
"括弧の対応表示時間 (noshowmatch:表示しない)
set showmatch matchtime=1
"タブを設定 (ts=tabstop, sw=shiftwidth, sts=softtabstop)
set ts=2 sw=2 sts=0
"自動的にインデントする (noautoindent:インデントしない)
set autoindent
"Cインデントの設定
set cinoptions+=:0
"タイトルを表示
set title
"コマンドラインの高さ (gvimはgvimrcで指定)
set cmdheight=1
set laststatus=2
"コマンドをステータス行に表示
set showcmd
"画面最後の行をできる限り表示する
set display=lastline
"Tab、行末の半角スペースを明示的に表示する
set list
"どの文字でタブや改行を表示するかを設定
set listchars=tab:^\ ,trail:~
"タブをスペースに展開する (noexpandtab:展開しない)
set expandtab
"折り畳み機能の設定 (indent: インデントに合わせて折り畳む)
"set foldmethod=syntax
"ルーラーを表示 (noruler:非表示)
set ruler
" ハイライトを有効にする
if &t_Co > 2 || has('gui_running')
  syntax on
endif
" Highlight the column
set colorcolumn=100
"色テーマ設定
"gvimの色テーマは.gvimrcで指定する
"colorscheme BasicBlack
colorscheme default
"if has("win32)
"endif
"colorscheme consoleBlack


"---------------------------------
" シンタックスハイライト
"---------------------------------
" Highlight Groovy scripts
au BufNewFile,BufRead *.gradle setf groovy


""""""""""""""""""""""""""""""
"ステータスラインに文字コード等表示
"iconvが使用可能の場合、カーソル上の文字コードをエンコードに応じた表示にするFencB()を使用
""""""""""""""""""""""""""""""
"if has('iconv')
"  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=[0x%{FencB()}]\ (%v,%l)/%L%8P\ 
"else
"  set statusline=%<%f\ %m\ %r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=\ (%v,%l)/%L%8P\ 
"endif

" ステータスラインの表示を ファイル名 (ファイルパス)		[ファイル形式][文字コード][改行コード][行,列] にする
" http://hail2u.net/blog/software/optimize-vim-statusline.html を参照
set statusline=%{expand('%:p:t')}\ %<\(%{expand('%:p:h')}\)%=\ %{fugitive#statusline()}%m%r%y%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}[%3l,%3c]

"FencB() : カーソル上の文字コードをエンコードに応じた表示にする
function! FencB()
  let c = matchstr(getline('.'), '.', col('.') - 1)
  let c = iconv(c, &enc, &fenc)
  return s:Byte2hex(s:Str2byte(c))
endfunction

function! s:Str2byte(str)
  return map(range(len(a:str)), 'char2nr(a:str[v:val])')
endfunction

function! s:Byte2hex(bytes)
  return join(map(copy(a:bytes), 'printf("%02X", v:val)'), '')
endfunction

"----------------------------------------
" diff/patch
"----------------------------------------
"diffの設定
if has('win32') || has('win64')
  set diffexpr=MyDiff()
  function! MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let cmd = '!diff ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
    silent execute cmd
  endfunction
endif

"現バッファの差分表示(変更箇所の表示)
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
"ファイルまたはバッファ番号を指定して差分表示。#なら裏バッファと比較
command! -nargs=? -complete=file Diff if '<args>'=='' | browse vertical diffsplit|else| vertical diffsplit <args>|endif
"パッチコマンド
set patchexpr=MyPatch()
function! MyPatch()
   :call system($VIM."\\'.'patch -o " . v:fname_out . " " . v:fname_in . " < " . v:fname_diff)
endfunction

"----------------------------------------
" ノーマルモード
"----------------------------------------
"ヘルプ検索
nnoremap <F1> K
"現在開いているvimスクリプトファイルを実行
nnoremap <F8> :source %<CR>
"強制全保存終了を無効化
"nnoremap ZZ <Nop>
"カーソルをj k では表示行で移動する。物理行移動は<C-n>,<C-p>
"キーボードマクロには物理行移動を推奨
"h l は行末、行頭を超えることが可能に設定(whichwrap)
nnoremap <Down> gj
nnoremap <Up>   gk
nnoremap h <Left>
nnoremap j gj
nnoremap k gk
nnoremap l <Right>
"l を <Right>に置き換えても、折りたたみを l で開くことができるようにする
if has('folding')
  nnoremap <expr> l foldlevel(line('.')) ? "\<Right>zo" : "\<Right>"
endif
" <C-s> で保存
inoremap <C-s> <ESC>:w<CR>a
nnoremap <C-s> :w<CR>

"----------------------------------------
" 挿入モード
"----------------------------------------
" Ctrl + dhtn でカーソル移動
"inoremap <C-t> <Up>
"inoremap <C-h> <Down>
"inoremap <C-d> <Left>
"inoremap <C-n> <Right>
" Home, End の代わり
inoremap <Leader>a <Home>
inoremap <C-e> <End>

"----------------------------------------
" ビジュアルモード
"----------------------------------------

"----------------------------------------
" コマンドモード
"----------------------------------------

"----------------------------------------
" Vimスクリプト
"----------------------------------------
""""""""""""""""""""""""""""""
"ファイルを開いたら前回のカーソル位置へ移動
"$VIMRUNTIME/vimrc_example.vim
""""""""""""""""""""""""""""""
augroup vimrcEx
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line('$') |
    \   exe "normal! g`\"" |
    \ endif
augroup END

""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインのカラー変更
""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif
let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
    redraw
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

""""""""""""""""""""""""""""""
"全角スペースを表示
""""""""""""""""""""""""""""""
"コメント以外で全角スペースを指定しているので、scriptencodingと、
"このファイルのエンコードが一致するよう注意！
"強調表示されない場合、ここでscriptencodingを指定するとうまくいく事があります。
"scriptencoding cp932
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
  "全角スペースを明示的に表示する
  silent! match ZenkakuSpace /　/
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd VimEnter,BufEnter * call ZenkakuSpace()
  augroup END
endif

""""""""""""""""""""""""""""""
"grep,tagsのためカレントディレクトリをファイルと同じディレクトリに移動する
""""""""""""""""""""""""""""""
"if exists('+autochdir')
"  "autochdirがある場合カレントディレクトリを移動
"  set autochdir
"else
"  "autochdirが存在しないが、カレントディレクトリを移動したい場合
"  au BufEnter * execute ":silent! lcd " . escape(expand("%:p:h"), ' ')
"endif

"" テンプレート自動読み込み設定
""C:.c
"autocmd BufNewFile *.c 0r $MY_VIMRUNTIME/template/c.txt
""C++:.cpp,.cc
"autocmd BufNewFile *.cpp 0r $MY_VIMRUNTIME/template/cpp.txt
"autocmd BufNewFile *.cc 0r $MY_VIMRUNTIME/template/cpp.txt
""Java
"autocmd BufNewFile *.java 0r $MY_VIMRUNTIME/template/java.txt
""TeX
"autocmd BufNewFile *.tex 0r $MY_VIMRUNTIME/template/tex.txt
""TXT
"autocmd BufNewFile *.txt 0r $MY_VIMRUNTIME/template/txt.txt

"----------------------------------------
" 各種プラグイン設定
"----------------------------------------
"===== Latex Suite ==========
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" TIP: If you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
" Jump to a placeholder
imap <C-d> <Plug>IMAP_JumpForward
" .texファイルのコンパイルプログラムを指定(エラーで停止しないようオプション指定)
let g:Tex_CompileRule_dvi='platex -synctex=1 -kanji=utf8 -guess-input-enc -interaction=nonstopmode $*'
" .dviファイルのビュープログラムを指定（Windows か Linux かを判定後）
if has('unix')
	let g:Tex_ViewRule_dvi='/usr/local/teTex/bin/xdvi'
elseif has('win32')
	let g:Tex_ViewRule_dvi='C:\texlive\2013\bin\win32\dviout.exe'
endif
" ps ファイル生成のための依存関係を記述。
let g:Tex_CompileRule_ps='dvips $*'
let g:Tex_FormatDependency_ps='dvi,ps'
if has('unix')
	let g:Tex_ViewRule_ps='/usr/local/teTex/bin/xdvi'
elseif has('win32')
	let g:Tex_ViewRule_ps='C:\tex\Ghostgum\gsview\gsview32.exe'
endif
" pdfファイル生成のための依存関係を記述。
" 以下の設定の場合、ターゲットにpdfを指定して\llでコンパイルすると、
" まず.dviファイルが作られ、次にそれをもとに.pdfファイルが作られる
let g:Tex_FormatDependency_pdf='dvi,pdf'
" .dviファイルのコンパイルプログラムを指定
let g:Tex_CompileRule_pdf='dvipdfmx $*.dvi'
" .pdfファイルのビュープログラムを指定
if has('unix')
	let g:Tex_ViewRule_pdf='/usr/local/Adobe/Reader9/bin/acroread'
elseif has('win32') || has('win64')
	"let g:Tex_ViewRule_pdf='C:\Program Files\Adobe\Reader 11.0\Reader\AcroRd32.exe'
	"let g:Tex_ViewRule_pdf='rundll32 shell32,ShellExec_RunDLL SumatraPDF -reuse-instance -inverse-search "D:\apps\vim\gvim.exe -n -c \":RemoteOpen +\%l \%f\"" D:\apps\SumatraPDF\SumatraPDF.exe'
	let g:Tex_ViewRule_pdf='rundll32 shell32,ShellExec_RunDLL SumatraPDF -reuse-instance -inverse-search "D:\apps\vim\gvim.exe -n -c \":RemoteOpen +\%l \%f\""'
endif
" デフォルトのターゲットに dvi を指定
let g:Tex_DefaultTargetFormat='pdf'
" .bibファイルのコンパイルプログラムを指定
let g:Tex_BibtexFlavor = 'pbibtex -kanji=utf8'
" 無視する警告（デフォルトでは以下の7つの警告が設定されている）
let g:Tex_IgnoredWarnings=''
"			\"You have requested\n".
"			\"Underfull\n".
"			\"LaTeX Font Warning\n"
"			\"Overfull\n"
"			\"specifier changed to\n".
"			\"Missing number, treated as zero.\n".
"			\"There were undefined references\n".
"			\"Citation %.%# undefined\n".
" Folding
let g:Tex_FoldedEnvironments='verbatim,comment,eq,gather,aligned,align,figure,
  \ table,thebibliography,keywords,abstract,titlepage,tabular,bmatrix,
  \ multline,theorem,proposition,lemma,corollary,remark,definition,assumption,
  \ problem,proof,algorithm,cases,minipage,enumerate,subequations,block,
  \ alertblock,exampleblock,frame'


"===================================
"
"  VIM-PLUG
"
"===================================
call plug#begin('~/.vim/plugged')

"========== General ==========
" Next generation completion framework
Plug 'Shougo/neocomplete.vim'
" Unite and create user interfaces.
Plug 'Shougo/unite.vim'
" MRU plugin includes unite.vim MRU sources
Plug 'Shougo/neomru.vim'
" Powerful shell implemented by vim.
Plug 'Shougo/vimshell.vim'
" neo-snippet plugin contains neocomplcache snippets source
Plug 'Shougo/neosnippet'
" The standard snippets repository for neosnippet
Plug 'Shougo/neosnippet-snippets'
" Interactive command execution in Vim.
Plug 'Shougo/vimproc.vim'
" Syntax checking hacks for vim
Plug 'scrooloose/syntastic'
" Sophisticated comment plugin
Plug 'tyru/caw.vim'
" Vim motions on speed!
Plug 'Lokaltog/vim-easymotion'
" Git wrapper
Plug 'tpope/vim-fugitive'
" Provides insert mode auto-completion for quotes, parens, brackets, etc.
Plug 'Raimondi/delimitMate'
" This plugin inserts and updates a time stamp automatically.
Plug 'autodate.vim'
" Provides support for expanding abbreviations similar to emmet.
Plug 'mattn/emmet-vim'
" Run commands quickly.
Plug 'thinca/vim-quickrun'
" A Vim plugin for visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'
" Monokai theme
Plug 'tomasr/molokai'
" Alpaca
Plug 'alpaca-tc/alpaca_powertabline'
" Powerline is a statusline plugin for vim, and provides statuslines and prompts
" for several other applications
Plug 'Lokaltog/powerline'

"========== Haskell ==========
" Vim configuration files for Haskell code
Plug 'kana/vim-filetype-haskell', { 'for': 'haskell' }
" A completion plugin for Haskell, using ghc-mod
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
" Vim to Haskell: A collection of vimscripts for Haskell development.
Plug 'dag/vim2hs', { 'for': 'haskell' }
" Happy Haskell programming on Vim, powered by ghc-mod
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }

"========== Scala ==========
" Integration of Scala into Vim
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

"========== Golang ==========
Plug 'fatih/vim-go', { 'for': 'go' }

call plug#end()



"===================================
" neocomplete
"
" Next generation completion framework
"===================================
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_ignore_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Use fuzzy completion.
let g:neocomplete#enable_fuzzy_completion = 1

" Define dictionaries
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'vimshell' : $HOME.'/.vimshell_hist',
  \ 'scala' : $HOME.'/.vim/dict/scala.dict',
  \ }

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"===================================
" Syntastic
"
" Syntax checking hacks for vim
"===================================
" Use the |:sign| interface to mark syntax errors.
let g:syntastic_enable_signs=1
" Automatically open the |location-list| (see |syntastic-error-window|)
" when a buffer has errors.
let g:syntastic_auto_loc_list=1
" Ignore AngularJS's directives
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]


"===================================
" caw.vim
"
" Sophisticated comment plugin
"===================================
nnoremap <Leader>c <Plug>(caw:i:toggle)
vnoremap <Leader>c <Plug>(caw:i:toggle)

"===================================
" EasyMotion
"
" Vim motions on speed!
"===================================
"Disable default mappings
let g:EasyMotion_do_mapping = 0
" Enable smartcase
let g:EasyMotion_smartcase = 1
" Jump to anywhere you want by just `4` or `3` key strokes without thinking!
" `s{char}{char}{target}`
nmap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)
omap z <Plug>(easymotion-s2)  " Avoid conflict with surround.vim
" Of course, you can map to any key you want such as `<Space>`
" map <Space>(easymotion-s2)


"===================================
" vimproc
"
" Interactive command execution in Vim.
"===================================
let vimproc_updcmd = has('win64') ?
      \ 'tools\\update-dll-mingw 64' : 'tools\\update-dll-mingw 32'


"===================================
" quickrun.vim
"
" Run commands quickly.
"===================================
let g:quickrun_config = {}
" Use vimproc to run
let g:quickrun_config._ = {'runner' : 'vimproc'}
" Scala 用
nnoremap <silent> <Leader>r :QuickRun -cmdopt ''<CR>


"===================================
" Unite
"
" Unite and create user interfaces.
"===================================
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable=1
let g:unite_source_file_mru_limit=100
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>


"===================================
" ghcmod.vim
"
" Happy Haskell programming on Vim, powered by ghc-mod
"===================================
autocmd FileType haskell NeoBundleSource ghcmod-vim
" \t で型判定
nnoremap <Leader>t :GhcModType<CR>
vnoremap <Leader>t :GhcModType<CR>
" \T で型判定のハイライトを消す
nnoremap <Leader>T :GhcModTypeClear<CR>
vnoremap <Leader>T :GhcModTypeClear<CR>


"===================================
" vim-indent-guides
"
" A Vim plugin for visually displaying indent levels in code
"===================================
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=0
let g:indent_guides_guide_size=1
autocmd VimEnter,ColorScheme * :hi IndentGuidesOdd  ctermbg=110
autocmd VimEnter,ColorScheme * :hi IndentGuidesEven ctermbg=140


"===================================
" vim-fugitive
"
" A Git wrapper so awsome, it should be illegal
"===================================
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>


" Disable auto comment out
autocmd Filetype * set formatoptions-=ro

