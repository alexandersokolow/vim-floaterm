function! floaterm#wrapper#ftrash#(cmd, jobopts, config) abort
  let a:jobopts.on_exit = funcref('s:ftrash_callback')
  return [v:true, "clear && " . a:cmd . "; exit"]
endfunction

function! s:ftrash_callback(...) abort
  norm "1 rf"
endfunction
