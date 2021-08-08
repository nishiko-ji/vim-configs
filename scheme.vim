"----------------------------------------------------------
" カラースキーム
"----------------------------------------------------------
"molokai
if neobundle#is_installed('molokai')
    colorscheme molokai " カラースキームにmolokaiを設定する
endif

set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

" miramare
"set termguicolors
"let g:miramare_enable_italic = 1
"let g:miramare_disable_italic_comment = 1
"colorscheme miramare
