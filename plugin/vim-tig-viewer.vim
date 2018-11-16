if has('nvim')
  function! s:tig(...)
    function! s:tigopen()
      call termopen('tig')
    endfunction

    function! s:tigopencommit(commit)
      call termopen('tig' . ' ' . a:commit)
    endfunction

    if a:0 > 0
      call s:tigopencommit(a:1)
    else
      call s:tigopen()
    endif

    startinsert
  endfunction

  command! -nargs=? Tig call s:tig(<f-args>)
endif
