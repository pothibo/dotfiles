function! GetCurrentName()
  return expand("%:t") == '' ? '<none>' : expand("%:t")
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction
