
function! muffin#trimSpaces()
    "" Save last search, and cursor position.
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

function! muffin#showSyntax()
     let synid = ""
     let guifg = ""
     let guibg = ""
     let gui   = ""

     let id1  = synID(line("."), col("."), 1)
     let tid1 = synIDtrans(id1)

     if synIDattr(id1, "name") != ""
      "let synid = "group: " . synIDattr(id1, "name")
      let synid = synIDattr(id1, "name")
      if (tid1 != id1)
           "let synid = synid . '->' . synIDattr(tid1, "name")
           let synid = synid . ' ' . synIDattr(tid1, "name")
      endif
      let id0 = synID(line("."), col("."), 0)
      if (synIDattr(id1, "name") != synIDattr(id0, "name"))
           let synid = synid .  " (" . synIDattr(id0, "name")
           let tid0 = synIDtrans(id0)
           if (tid0 != id0)
            let synid = synid . '->' . synIDattr(tid0, "name")
           endif
           let synid = synid . ")"
      endif
     endif

     " Use the translated id for all the color & attribute lookups; the linked id yields blank values.
     if (synIDattr(tid1, "fg") != "" )
      "let guifg = " guifg=" . synIDattr(tid1, "fg") . "(" . synIDattr(tid1, "fg#") . ")"
      let guifg = " ctermfg=" . synIDattr(tid1, "fg#")
     endif
     if (synIDattr(tid1, "bg") != "" )
      "let guibg = " guibg=" . synIDattr(tid1, "bg") . "(" . synIDattr(tid1, "bg#") . ")"
      let guibg = " ctermbg=" . synIDattr(tid1, "bg#")
     endif
     if (synIDattr(tid1, "bold"     ))
      let gui   = gui . ",bold"
     endif
     if (synIDattr(tid1, "italic"   ))
      let gui   = gui . ",italic"
     endif
     if (synIDattr(tid1, "reverse"  ))
      let gui   = gui . ",reverse"
     endif
     if (synIDattr(tid1, "inverse"  ))
      let gui   = gui . ",inverse"
     endif
     if (synIDattr(tid1, "underline"))
      let gui   = gui . ",underline"
     endif
     if (gui != ""                  )
      let gui   = substitute(gui, "^,", " gui=", "")
     endif

     let message = synid . guifg . guibg . gui
     "let message = guifg . guibg . gui
     if message == ""
      echohl WarningMsg
      let message = "<no syntax group here>"
      return
     endif

     "echohl StatusLine
     let stack = muffin#getStack()
     "call remove(stack, -1)
     let message = (len(stack) ? join(stack, " / ") : "(none)") . "    " . message
     echo message
     "echohl None
endfunction

function! muffin#getStack()
    if !exists("*synstack")
        return synIDattr(synID(line('.'), col('.'), 1), 'name')
    else
        return map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endif
endfunction
