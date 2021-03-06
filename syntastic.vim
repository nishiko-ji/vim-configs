"----------------------------------------------------------
" Syntastic
"----------------------------------------------------------
" 構文エラー行に「>>」を表示
let g:syntastic_enable_signs = 1
" 他のVimプラグインと競合するのを防ぐ
let g:syntastic_always_populate_loc_list = 1
" 構文エラーリストを非表示
let g:syntastic_auto_loc_list = 0
" ファイルを開いた時に構文エラーチェックを実行する
let g:syntastic_check_on_open = 1
" 「:wq」で終了する時も構文エラーチェックする
let g:syntastic_check_on_wq = 1

" Python用. 構文エラーチェックにflake8を使用
let g:syntastic_python_checkers=['flake8']
" Ruby用. 構文エラーチェックにを使用
let g:syntastic_ruby_checkers = ['rubocop']
" Cpp用. 構文エラーチェックにを使用
let g:syntastic_cpp_checkers=['gcc']
" Javascript以外は構文エラーチェックをしない
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python','ruby' ,'cpp'],
                           \ 'passive_filetypes': [] }
