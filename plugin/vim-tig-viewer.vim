if has('nvim')
  function! s:tig()
    let current = expand('%')

    function! s:tigopen()
      call termopen('tig')
    endfunction

    call s:tigopen()
    startinsert
  endfunction

  command! Tig call s:tig()
endif
