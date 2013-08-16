" markdown filetype file

if exists("did_load_filetypes")

 finish

endif

augroup filetypedetect
    au BufRead,BufNewFile *html.erb setf html.erb
augroup END

augroup markdown

    au! BufRead,BufNewFile *.mkd   setfiletype mkd
    au! BufRead,BufNewFile *.markdown   setfiletype mkd

augroup END

