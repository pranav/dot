setlocal splitbelow
setlocal splitright

function! PranavPython(file)
  20new
  execute 'read !python ' . a:file
endfunction

nmap <F2> :call PranavPython(@%)<CR>
setlocal tabstop=4 shiftwidth=4 et

TagbarOpen

