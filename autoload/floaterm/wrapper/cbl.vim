function! floaterm#wrapper#cbl#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:cbl_callback')
  return [v:true, "clear && echo && " . a:cmd . "; exit"]
endfunction

function! s:cbl_callback(...) abort
  norm "1 rf"
endfunction
