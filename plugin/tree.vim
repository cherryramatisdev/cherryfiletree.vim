" Custom settings and mappings.
let g:fern#disable_default_mappings = 1

noremap <silent> <Leader>op :Fern . -drawer -toggle -width=35<CR><C-w>=
noremap <silent> <Leader>oP :Fern . -drawer -reveal=% -toggle -width=35<CR><C-w>=

function! FernInit() abort
  nmap <buffer><expr>
        \ <Plug>(fern-my-open-expand-collapse)
        \ fern#smart#leaf(
        \   "\<Plug>(fern-action-open:select)",
        \   "\<Plug>(fern-action-expand)",
        \   "\<Plug>(fern-action-collapse)",
        \ )
  nmap <buffer> <cr> <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> q <cmd>q<cr>
  nmap <buffer> o <Plug>(fern-my-open-expand-collapse)
  nmap <buffer> n <Plug>(fern-action-new-path)
  nmap <buffer> D <Plug>(fern-action-remove)
  nmap <buffer> M <Plug>(fern-action-move)
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> Z <Plug>(fern-action-hidden:toggle)
  nmap <buffer> <c-l> <Plug>(fern-action-reload)
  nmap <buffer> <Tab> <Plug>(fern-action-mark:toggle)
  nmap <buffer> <c-x> <Plug>(fern-action-open:split)
  nmap <buffer> <c-v> <Plug>(fern-action-open:vsplit)
  nmap <buffer><nowait> h <Plug>(fern-action-collapse)
  nmap <buffer><nowait> l <Plug>(fern-my-open-expand-collapse)
endfunction

augroup FernGroup
  autocmd!
  autocmd FileType fern call FernInit()
augroup END
