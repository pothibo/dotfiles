function! GetCurrentName()
  return expand("%:t") == '' ? '<none>' : expand("%:t")
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
