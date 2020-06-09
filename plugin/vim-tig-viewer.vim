function! s:tig(...)
  function! s:exec_tig(args)
    let command = 'tig' . ' ' . a:args

    if has('nvim')
      call termopen(command)
    elseif has('terminal')
      call term_start('env ' . command, {
            \ 'curwin': v:true,
            \ 'term_finish': 'close',
            \ })
    else
      echo 'terminal or nvim required'
    endif
  endfunction

  if a:0 > 0
    call s:exec_tig(a:1)
  else
    call s:exec_tig('')
  endif

  startinsert
endfunction

command! -nargs=? Tig call s:tig(<f-args>)
