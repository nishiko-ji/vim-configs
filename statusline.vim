"----------------------------------------------------------
" ステータスライン
"----------------------------------------------------------
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの位置を表示する
set wildmode=list:longest " コマンドラインの補完

let g:lightline = {
      \ 'active': {
      \   'left': [ ['mode', 'paste'], ['readonly', 'filename', 'modified'] ]
      \ },
      \ 'component_function': {
      \   'mode': 'LightlineMode'
      \ }
      \ }
function! LightlineMode()
  return  &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

let g:lightline = {
      \ 'active': {
      \   'right': [ [ 'syntastic', 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ }
      \ }
let g:syntastic_mode_map = { 'mode': 'passive' }
augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp,*.py,*.rb call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

let g:lightline = {
      \ 'colorscheme': 'molokai'
      \ }

