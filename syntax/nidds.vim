" Language:     NI Data Dictionary Script

if exists("b:current_syntax")
  finish
endif

syn keyword ddsStructure   object class enum
syn keyword ddsModifier    static dynamic staticcap
syn keyword ddsKeyword     u32 i32 string ref bool
syn keyword ddsKeyword     u32array i32array stringarray refarray
syn keyword ddsKeyword     version declare

syn keyword ddsValue       true false null
syn match   ddsComment     "//.*"
syn region  ddsString      start=+"+ end=+"+
syn match   ddsNumber      "\<\d\+\>"

hi def link ddsComment     Comment
hi def link ddsKeyword     Keyword
hi def link ddsValue       Number
hi def link ddsNumber      Number
hi def link ddsString      String
hi def link ddsModifier    StorageClass
hi def link ddsStructure   Structure

let b:current_syntax = "nidds"

