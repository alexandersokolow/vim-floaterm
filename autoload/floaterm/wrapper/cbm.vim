function! floaterm#wrapper#cbm#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:cbm_callback')
  return [v:true, "clear && " . a:cmd . "; exit"]
endfunction

function! s:cbm_callback(...) abort
  norm "1 rf"
endfunction
