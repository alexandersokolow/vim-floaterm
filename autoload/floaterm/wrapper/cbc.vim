function! floaterm#wrapper#cbc#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:cbc_callback')
  return [v:true, "clear && " . a:cmd . " && exit"]
endfunction

function! s:cbc_callback(...) abort
  norm "1 rf"
endfunction
