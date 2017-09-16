
syn keyword muttrcCommand	skipwhite unhook nextgroup=muttrcHooks

syn keyword muttrcCommand	skipwhite charset-hook nextgroup=muttrcRXString

syn keyword muttrcCommand 	skipwhite nospam nextgroup=muttrcNoSpamPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern

syn keyword muttrcCommand 	skipwhite spam nextgroup=muttrcSpamPattern
syn region muttrcSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL
syn region muttrcSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL

syn keyword muttrcCommand	set     skipwhite nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	unset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	reset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	toggle  skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcCommand	skipwhite bind nextgroup=muttrcBindMenuList,muttrcBindMenuListNL
syn keyword muttrcCommand	skipwhite alias nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syn keyword muttrcCommand	skipwhite unalias nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syn keyword muttrcCommand	skipwhite macro	nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL
