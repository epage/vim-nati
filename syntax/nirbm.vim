" Language:     NI Register Map Generator

if exists("b:current_syntax")
  finish
endif

syn keyword rbmAttribute Readable Writable Strobe ActiveLowStrobe Decoded
syn keyword rbmBoolean   true false on off

syn match   rbmDiscriminant "^\([EFIRV]\|TR\?\)"
syn match   rbmComment      "^[#C@].*"
syn match   rbmComment      "@.*"

syn match   rbmOption  "--initial-value"
syn match   rbmOption  "--refresh-on-reset"
syn match   rbmOption  "--no-hardware-reset"
syn match   rbmOption  "--generate-include"
syn match   rbmOption  "--io-strategy\(-\(8\|16\|32\)Bit\)\?\(-\(windowed\|direct\)\)\?"
syn match   rbmOption  "--force-default"
syn match   rbmOption  "--initial-value"
syn match   rbmOption  "--no-soft-copy"
syn match   rbmOption  "--dynamic-access"
syn match   rbmOption  "--user-mode-writable"
syn match   rbmOption  "--offset-type"
syn match   rbmOption  "--traceable-offset-type"
syn match   rbmOption  "--namespace"

syn match   rbmNumber  "\<\d\+\>"
syn match   rbmNumber  "\<0x\x\+\>"

syn keyword rbmResNames Default Reserved
syn keyword rbmError    status


hi def link rbmComment         Comment
hi def link rbmBoolean         Boolean
hi def link rbmDiscriminant    Keyword
hi def link rbmOption          Preproc 
hi def link rbmAttribute       String
hi def link rbmNumber          Number
hi def link rbmResNames        Special
hi def link rbmError           Error 

let b:current_syntax = "nirbm"

