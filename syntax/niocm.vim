" Language:     NI Orb Class Map

if exists("b:current_syntax")
  finish
endif

syn keyword ocmKeyword deletelib add
syn keyword ocmMode    U K S

syn region  ocmComment start="#" skip="\\$" end="$" keepend contains=@Spell

hi def link ocmComment Comment
hi def link ocmKeyword Keyword
hi def link ocmMode PreProc

let b:current_syntax = "niocm"

