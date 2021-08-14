"----------------------------------------------------------
" カラースキーム
"----------------------------------------------------------
" True Color 対応
set termguicolors
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " 文字色
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " 背景色
"molokai
"if neobundle#is_installed('molokai')
"    colorscheme molokai " カラースキームにmolokaiを設定する
"endif

"set t_Co=256 " iTerm2など既に256色環境なら無くても良い
"syntax enable " 構文に色を付ける

" miramare
"set termguicolors
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1
"colorscheme miramare
"sonokai
if neobundle#is_installed('sonokai')
    colorscheme sonokai " カラースキームにsonokaiを設定する
endif
" iceberg
"colorscheme iceberg " カラースキームにicebergを設定する
