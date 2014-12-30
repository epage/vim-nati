" Language: C++ Additions

syn match niNamespace   "\<\(n\)[A-Z][0-9a-zA-Z_]*"

syn keyword niType      i8 i16 i32 i64
syn keyword niType      u8 u16 u32 u64
syn keyword niType      f32 f64
syn keyword niType      ViStatus ViSession ViBoolean ViChar ViAddr
syn keyword niType      ViString ViConstString
syn keyword niType      ViInt64 ViInt32 ViInt16 ViInt8
syn keyword niType      ViUInt64 ViUInt32 ViUInt16 ViUInt8
syn keyword niType      ViReal64 ViReal32
syn keyword niType      GUID LONG ULONG LPWSTR
syn match   niType      "\(\w\+\)\@<!\(\w\+ *:: *\)*[it][A-Z0-9]\w\+"
syn match   niType      "\<\(t\)[A-Z0-9][0-9a-zA-Z_]*\>"
syn match   niType      "\<\(::t\)[A-Z0-9][0-9a-zA-Z_]*\>"
syn match   niType      "\<\(i\)[A-Z0-9][0-9a-zA-Z_]*\>"
syn match   niType      "\<\(::i\)[A-Z0-9][0-9a-zA-Z_]*\>"

syn match niConstant    "\<\(k\)[A-Z0-9][0-9a-zA-Z_]*\>"
syn match niDefine      "\<\(n\)[A-Z][0-9A-Z_]_k*[0-9a-zA-Z_]*\>"
syn match niDefine      "\<[A-Z][0-9A-Z_]*\>"

syn keyword niBoolean   kTrue kFalse

" Member variables
syn match niMember      "\<\(_\)[0-9a-zA-Z][0-9a-zA-Z_]*\>"
syn match niMember      "\<\(m_\)[0-9a-zA-Z][0-9a-zA-Z_]*\>"

syn match   niDebug     "\<\(NIM_\)[0-9a-zA-Z_]*\>"
syn match   niDebug     "\<\(NISDBG_\)[0-9a-zA-Z_]*\>"
syn keyword niDebug     NIERR_LOCATION

hi def link niNamespace Identifier
hi def link niType      Type
hi def link niConstant  Constant
hi def link niDefine    Define
hi def link niBoolean   Boolean
hi def link niMember    Identifier
hi def link niDebug     Debug

