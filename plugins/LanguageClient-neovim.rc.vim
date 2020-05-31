set hidden

" settings for languages
let g:LanguageClient_serverCommands = {
        \ 'cpp': ['clangd'],
        \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
        \ 'go': ['gopls']
        \ }

augroup LanguageClient_config
autocmd!
autocmd User LanguageClientStarted setlocal signcolumn=yes
autocmd User LanguageClientStopped setlocal signcolumn=auto
augroup END

let g:LanguageClient_autoStart = 1
nnoremap <silent> <Space>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <Space>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <Space>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <Space>lf :call LanguageClient_textDocument_formatting()<CR>

autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

let diagnosticsDisplaySettings={
  \       '1': {
  \           'name': 'Error',
  \           'texthl': 'ALEError',
  \           'signText': 'X',
  \           'signTexthl': 'ALEErrorSign',
  \       },
  \       '2': {
  \           'name': 'Warning',
  \           'texthl': 'ALEWarning',
  \           'signText': '!',
  \           'signTexthl': 'ALEWarningSign',
  \       },
  \       '3': {
  \           'name': 'Information',
  \           'texthl': 'ALEInfo',
  \           'signText': 'i',
  \           'signTexthl': 'ALEInfoSign',
  \       },
  \       '4': {
  \           'name': 'Hint',
  \           'texthl': 'ALEInfo',
  \           'signText': 'h',
  \           'signTexthl': 'ALEInfoSign',
  \       },
  \  }

let g:LanguageClient_diagnosticsDisplay=diagnosticsDisplaySettings
