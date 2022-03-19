function! floaterm#wrapper#compf#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:compf_callback')
  return [v:true, "clear && " . a:cmd . "; exit"]
endfunction

function! s:compf_callback(...) abort
  norm "1 rfU"
endfunction
