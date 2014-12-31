" Language:     NI MRU Topography

if exists("b:current_syntax")
  finish
endif

syn keyword mruPreProc requires

syn keyword mruKeyword alias aliasTerminal analog attribute avoidAnalysis
syn keyword mruKeyword clock10Override clock10OverrideAndStarTrigger configuration
syn keyword mruKeyword constantName cost default defaultInput defineStructuralGroup
syn keyword mruKeyword defineTerminal defineTerminalGroup defineTerminalSet
syn keyword mruKeyword dimResource direction disablePassthroughMuxReuse floating
syn keyword mruKeyword group lazyUncommit name namespace onboardClockSupported
syn keyword mruKeyword passThrough polarity releaseNotification
syn keyword mruKeyword requestRedundantNotifications reserveNotification
syn keyword mruKeyword routableHeader routableType selectInput set setMapping
syn keyword mruKeyword specifyComponent specifyTopography starTriggerMaster
syn keyword mruKeyword starTriggerType subTopography subsystem visibility waypoint

syn keyword mruBoolean true false
syn keyword mruValue   source destination invert common advanced private
syn match   mruNumber  "\<\d\+\>"
syn region  mruComment start="//" skip="\\$" end="$" keepend contains=@Spell
syn region  mruComment start=";" skip="\\$" end="$" keepend contains=@Spell
syn region  mruString  start=+"+ end=+"+ contains=@Spell

hi def link mruBoolean Boolean
hi def link mruKeyword Keyword
hi def link mruValue   Number
hi def link mruNumber  Number
hi def link mruComment Comment
hi def link mruString  String
hi def link mruPreProc PreProc

let b:current_syntax = "nitopography"

