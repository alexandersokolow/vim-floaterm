function! floaterm#wrapper#cbc#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:cbc_callback')
  echo a:cmd
  return [v:true, "clear && echo && " . a:cmd . "; exit"]
endfunction

function! s:cbc_callback(...) abort
  norm "1 rf"
endfunction
