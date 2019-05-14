let b:names = []

match none
let &colorcolumn=join(range(998,999),",")
autocmd BufEnter * highlight OverLength ctermfg=gray
autocmd BufEnter * match OverLength /\%999v.*/

function! Hash(str)
  let num = 0
  for chr in split(a:str, '\zs')
    let num = (num+19+char2nr(chr)) % 216
  endfor
  return num+16
endfunction

function! DoName(name)
  if index(b:names, a:name) >= 0 | return | endif
  call add(b:names, a:name)
  let key  = substitute(a:name, '[^a-zA-Z0-9_@. ]', '',       'g')
  let ptrn = substitute(a:name, '[^a-zA-Z0-9_@. ]', '\\S\\?', 'g')
  let clr  = Hash(key)

  exec 'syn match c'.clr.'"\t'.ptrn.'\t"'
  exec 'syn cluster ircNames add=c' . clr
  exec 'hi def c'.clr.' ctermfg=' . clr
endfunction

function! DoNames()
  for line in getline(0, '$')
    let name = matchstr(line, '\v([\(\[]?[0-9-]* *\d\d:\d\d(:\d\d)? *[APM]*[)\]]?|^)\s*(\<[-+*@ ]?)?#?\zs[a-zA-Z0-9#|_@. \\]+\ze[:>]\s', '\1', '')
    if name != ''
      call DoName(name)
    endif
  endfor
endfunction

syn match ircSpeaker "\v(\t[-+*@ ]*)?[a-zA-Z0-9#\[\]\{\}|_@. ]+\t"            contained contains=@ircNames skipwhite nextgroup=ircName
syn match ircName    "\v[a-zA-Z0-9#-|_@.]+:\s"                                    contained contains=@ircNames skipwhite nextgroup=ircName
syn match ircMsg    "\v(.+)$"                                                     contained contains=ircName   skipwhite nextgroup=ircName
syn match ircError  "\v(error)"
syn match ircDate    "\v[0-9]+-[0-9]+-[0-9]+ [0-9]+:[0-9]+:[0-9]+"     contained                    skipwhite nextgroup=ircSys,ircSpeaker
syn match ircDo     "\v\&.+"                                                      contains=@ircDate
syn match ircSys     "\v^Conversation.*"                                          contained
syn match ircSys     "\v(\w|\>|-)+[^:<]\s.*"                                      contained contains=@ircNames
syn match ircFile    "\v(\d{4}-\d{2}-\d{2}\.\d{6}([-+]\d{4}\u{3})?.txt:|^)"                                              nextgroup=ircDate
syn match ircURL     "\v(http://|wwww.)\S+"
syn match comment    "^#.*"

"let r_ircSpeaker = "\v(\<[-+*@ ]*)?[a-zA-Z0-9#\[\]\{\}|_@. ]+[:>]\s"
"execute 'syn match ircSpeaker /' .  r_ircSpeaker . '/ contained contains=@ircNames skipwhite nextgroup=ircName'


syn cluster ircNames contains=NONE
call DoNames()
syn match ircIncr    "\w\+++" contains=@ircNames
syn match ircDecr    "\w\+--" contains=@ircNames

syn cluster ircColors contains=ircDecr,ircIncr

hi def comment Comment

hi ircDo      ctermfg=002
hi ircMsg     ctermfg=003
hi ircError   ctermfg=004
hi ircFile    ctermfg=005

hi ircSys     ctermfg=006
hi ircDate    ctermfg=10
hi ircURL     ctermfg=6
hi ircIncr    ctermfg=009
hi ircDecr    ctermfg=010
hi ircName    ctermfg=3
hi ircSpeaker ctermfg=4

set nolist

let b:current_syntax = "irc"
