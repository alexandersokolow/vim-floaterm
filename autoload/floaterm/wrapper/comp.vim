function! floaterm#wrapper#comp#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:comp_callback')
  return [v:true, "clear; " . a:cmd . "; exit"]
endfunction

function! s:comp_callback(...) abort
  norm "1 rfU"
endfunction
