" Language:     NI Build Services Package
" TODO: Add support for these:
"        targetBaseName
"        win32U_targetBaseName
"        release_targetBaseName
"        win32U_release_targetBaseName
"        win32U_appendMajorVersionToTarget
"        win32U_appendModeSuffixToTarget
 

if exists("b:current_syntax")
  finish
endif

syn keyword niSections        component subcomponent
syn keyword niCompModifiers   name version namespace oldestCompatibleVersion
syn keyword niCompModifiers   projectOwner technicalContact
syn keyword niCompModifiers   additionalNamespaces userDefinedMainNamespaces
syn keyword niCompModifiers   documentationURL purpose targetBaseName targetedOS
syn keyword niCompModifiers   appendMajorVersionToTarget appendModeSuffixToTarget
syn keyword niCompModifiers   type
syn keyword niCompModifiers   dependencies
syn keyword packageKeyword forwardNamespaces
" Deprecated: userDefinedMain, rebuildDependents, libraryFileUseVersionSuffix

syn keyword niSections        dependency
syn keyword niDepModifiers    perforcePath oldestCompatibleVersion

syn keyword niSections        excludeCommand

syn match   niPlatform        "\(user\|kernel\|single\)Type"
syn match   niPlatform        "\(user\|kernel\|single\)\w\+"
syn match   niPlatform        "win\(64U\|32U\|32K\|2000K\|xpK\|xp64K\|nt4K\)\w\+"
syn match   niPlatform        "pharlap\w\+"
syn match   niPlatform        "linux\(U\|24K\)\w\+"
syn match   niPlatform        "macosx\(U\|K\)\w\+"

syn region  niString          start=+"+ end=+"+
syn match   niPerforce        "\(\(penguin\|perforce\):\)\?\/\/\(\S\+\/\)\+[^;]\+"
syn keyword niValues          dynamiclib staticlib source no yes inherit program test
syn match   niVersion         "\<\d\+\.\d\+\.\d\+[abfd]\d\+\>"
syn match   niOldVersion      "\<\d\d\d\+[adbf]\d\+\(\.\d\+\)\?\>"
syn match   niNamespace       "n[A-Z]\+\d\d\d"

syn region  niComment         start="#" skip="\\$" end="$" keepend contains=@Spell

hi def link niSections        Structure
hi def link niDepModifiers    Keyword
hi def link niCompModifiers   Keyword
hi def link niPlatform        Keyword
hi def link niString          String
hi def link niPerforce        Special
hi def link niValues          Float
hi def link niVersion         Number
hi def link niOldVersion      Number
hi def link niNamespace       Number
hi def link niComment         Comment

let b:current_syntax = "nipackage"

