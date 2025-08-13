" Restore cursor position, window position, and last search after running a
" command.
function! Preserve(command)
  " Save the last search.
  let search = @/

  " Save the current cursor position.
  let cursor_position = getpos('.')

  " Save the current window position.
  normal! H
  let window_position = getpos('.')
  call setpos('.', cursor_position)

  " Execute the command.
  execute a:command

  " Restore the last search.
  let @/ = search

  " Restore the previous window position.
  call setpos('.', window_position)
  normal! zt

  " Restore the previous cursor position.
  call setpos('.', cursor_position)
endfunction

" Re-indent the whole buffer.
function! Indent()
  call Preserve('normal gg=G')
endfunction

" Auto indent on save
autocmd BufRead *.cpp call Indent()
autocmd BufWritePre *.cpp call Indent()

" Compile and Run code
nnoremap <F9> :w <bar> !cmd /v:on /c "((g++ -std=c++17 -c %:r.cpp -o %:r.o && g++ -std=c++17 -o %:r.exe %:r.o -O2 -s -static -Wl,--stack,268435456) & (IF \!ERRORLEVEL\! == 0 ((cd %:h) & (%:r.exe))))"<CR><CR>

" Run code only
nnoremap <F10> :!cmd /v:on /c "((cd %:h) & (%:r.exe))"<CR><CR>
