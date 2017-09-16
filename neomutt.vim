" Vim syntax file
" Language:	NeoMutt setup files
" Original:	Preben 'Peppe' Guldberg <peppe-vim@wielders.org>
" Maintainer:	Kyle Wheeler <kyle-muttrc.vim@memoryhole.net>
" Maintainer:	Richard Russon <rich@flatcap.org>
" Last Change:	11 September 2017

" This file covers NeoMutt 20170907

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Set the keyword characters
setlocal isk=@,48-57,_,-

syn match muttrcComment		"^# .*$" contains=@Spell
syn match muttrcComment		"^#[^ ].*$"
syn match muttrcComment		"^#$"
syn match muttrcComment		"[^\\]#.*$"lc=1

" Escape sequences (back-tick and pipe goes here too)
syn match muttrcEscape		+\\[#tnr"'Cc ]+
syn match muttrcEscape		+[`|]+
syn match muttrcEscape		+\\$+

" The variables takes the following arguments
"syn match  muttrcString		contained "=\s*[^ #"'`]\+"lc=1 contains=muttrcEscape
syn region muttrcString		contained keepend start=+"+ms=e skip=+\\"+ end=+"+ contains=muttrcEscape,muttrcCommand,muttrcAction,muttrcShellString
syn region muttrcString		contained keepend start=+'+ms=e skip=+\\'+ end=+'+ contains=muttrcEscape,muttrcCommand,muttrcAction
syn match muttrcStringNL	contained skipwhite skipnl "\s*\\$" nextgroup=muttrcString,muttrcStringNL

syn region muttrcShellString	matchgroup=muttrcEscape keepend start=+`+ skip=+\\`+ end=+`+ contains=muttrcVarStr,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcCommand

syn match  muttrcRXChars	contained /[^\\][][.*?+]\+/hs=s+1
syn match  muttrcRXChars	contained /[][|()][.*?+]*/
syn match  muttrcRXChars	contained /['"]^/ms=s+1
syn match  muttrcRXChars	contained /$['"]/me=e-1
syn match  muttrcRXChars	contained /\\/
" Why does muttrcRXString2 work with one \ when muttrcRXString requires two?
syn region muttrcRXString	contained skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcRXChars
syn region muttrcRXString	contained skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcRXChars
syn region muttrcRXString	contained skipwhite start=+[^ 	"'^]+ skip=+\\\s+ end=+\s+re=e-1 contains=muttrcRXChars
" For some reason, skip refuses to match backslashes here...
syn region muttrcRXString	contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+[^\\]\s+re=e-1 contains=muttrcRXChars
syn region muttrcRXString	contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+$\s+ contains=muttrcRXChars
syn region muttrcRXString2	contained skipwhite start=+'+ skip=+\'+ end=+'+ contains=muttrcRXChars
syn region muttrcRXString2	contained skipwhite start=+"+ skip=+\"+ end=+"+ contains=muttrcRXChars

" these must be kept synchronized with muttrcRXString, but are intended for
" muttrcRXHooks
syn region muttrcRXHookString	contained keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syn region muttrcRXHookString	contained keepend skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syn region muttrcRXHookString	contained keepend skipwhite start=+[^ 	"'^]+ skip=+\\\s+ end=+\s+re=e-1 contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syn region muttrcRXHookString	contained keepend skipwhite start=+\^+ end=+[^\\]\s+re=e-1 contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syn region muttrcRXHookString	contained keepend matchgroup=muttrcRXChars skipwhite start=+\^+ end=+$\s+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syn match muttrcRXHookStringNL contained skipwhite skipnl "\s*\\$" nextgroup=muttrcRXHookString,muttrcRXHookStringNL

" these are exclusively for args lists (e.g. -rx pat pat pat ...)
syn region muttrcRXPat		contained keepend skipwhite start=+'+ skip=+\\'+ end=+'\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syn region muttrcRXPat		contained keepend skipwhite start=+"+ skip=+\\"+ end=+"\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syn match muttrcRXPat		contained /[^-'"#!]\S\+/ skipwhite contains=muttrcRXChars nextgroup=muttrcRXPat
syn match muttrcRXDef 		contained "-rx\s\+" skipwhite nextgroup=muttrcRXPat

syn match muttrcSpecial		+\(['"]\)!\1+

syn match muttrcSetStrAssignment contained skipwhite /=\s*\%(\\\?\$\)\?[0-9A-Za-z_-]\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn region muttrcSetStrAssignment contained skipwhite keepend start=+=\s*"+hs=s+1 end=+"+ skip=+\\"+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syn region muttrcSetStrAssignment contained skipwhite keepend start=+=\s*'+hs=s+1 end=+'+ skip=+\\'+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syn match muttrcSetBoolAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetBoolAssignment contained skipwhite /=\s*\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetBoolAssignment contained skipwhite /=\s*"\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetBoolAssignment contained skipwhite /=\s*'\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetQuadAssignment contained skipwhite /=\s*\%(ask-\)\?\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*"\%(ask-\)\?\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*'\%(ask-\)\?\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetNumAssignment contained skipwhite /=\s*\d\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*"\d\+"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*'\d\+'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" Now catch some email addresses and headers (purified version from mail.vim)
syn match muttrcEmail		"[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
syn match muttrcHeader		"\<\c\%(From\|To\|C[Cc]\|B[Cc][Cc]\|Reply-To\|Subject\|Return-Path\|Received\|Date\|Replied\|Attach\)\>:\="

syn match   muttrcKeySpecial	contained +\%(\\[Cc'"]\|\^\|\\[01]\d\{2}\)+
syn match   muttrcKey		contained "\S\+"			contains=muttrcKeySpecial,muttrcKeyName
syn region  muttrcKey		contained start=+"+ skip=+\\\\\|\\"+ end=+"+	contains=muttrcKeySpecial,muttrcKeyName
syn region  muttrcKey		contained start=+'+ skip=+\\\\\|\\'+ end=+'+	contains=muttrcKeySpecial,muttrcKeyName
syn match   muttrcKeyName	contained "\<f\%(\d\|10\)\>"
syn match   muttrcKeyName	contained "\\[trne]"
syn match   muttrcKeyName	contained "\c<\%(BackSpace\|BackTab\|Delete\|Down\|End\|Enter\|Esc\|Home\|Insert\|Left\|PageDown\|PageUp\|Return\|Right\|Space\|Tab\|Up\)>"
syn match   muttrcKeyName	contained "<F[0-9]\+>"

syn match muttrcFormatErrors contained /%./

syn match muttrcStrftimeEscapes contained /%[AaBbCcDdeFGgHhIjklMmnpRrSsTtUuVvWwXxYyZz+%]/
syn match muttrcStrftimeEscapes contained /%E[cCxXyY]/
syn match muttrcStrftimeEscapes contained /%O[BdeHImMSuUVwWy]/

syn region muttrcIndexFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcIndexFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcQueryFormatStr contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcQueryFormatEscapes,muttrcQueryFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAliasFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAliasFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAttachFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAttachFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcComposeFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcComposeFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcFolderFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcFolderFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcMixFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcMixFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPCmdFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPCmdFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStatusFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStatusFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPGetKeysFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPGetKeysFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcSmimeFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcSmimeFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStrftimeFormatStr contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStrftimeFormatStr contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" The following info was pulled from hdr_format_str in hdrline.c
syn match muttrcIndexFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[aAbBcCdDeEfFHilLmMnNOPsStTuvXyYZ%]/
syn match muttrcIndexFormatEscapes contained /%[>|*]./
syn match muttrcIndexFormatConditionals contained /%?[EFHlLMNOXyY]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from alias_format_str in addrbook.c
syn match muttrcAliasFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[afnrt%]/
" The following info was pulled from query_format_str in query.c
syn match muttrcQueryFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[acent%]/
syn match muttrcQueryFormatConditionals contained /%?[e]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from mutt_attach_fmt in recvattach.c
syn match muttrcAttachFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CcDdefImMnQstTuX%]/
syn match muttrcAttachFormatEscapes contained /%[>|*]./
syn match muttrcAttachFormatConditionals contained /%?[CcdDefInmMQstTuX]?/ nextgroup=muttrcFormatConditionals2
syn match muttrcFormatConditionals2 contained /[^?]*?/
" The following info was pulled from compose_format_str in compose.c
syn match muttrcComposeFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ahlv%]/
syn match muttrcComposeFormatEscapes contained /%[>|*]./
" The following info was pulled from folder_format_str in browser.c
syn match muttrcFolderFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CDdfFglNstu%]/
syn match muttrcFolderFormatEscapes contained /%[>|*]./
syn match muttrcFolderFormatConditionals contained /%?[N]?/
" The following info was pulled from mix_entry_fmt in remailer.c
syn match muttrcMixFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ncsa%]/
syn match muttrcMixFormatConditionals contained /%?[ncsa]?/
" The following info was pulled from crypt_entry_fmt in crypt_gpgme.c
" and pgp_entry_fmt in pgpkey.c (note that crypt_entry_fmt supports
" 'p', but pgp_entry_fmt does not).
syn match muttrcPGPFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[nkualfctp%]/
syn match muttrcPGPFormatConditionals contained /%?[nkualfct]?/
" The following info was pulled from _mutt_fmt_pgp_command in
" pgpinvoke.c
syn match muttrcPGPCmdFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[pfsar%]/
syn match muttrcPGPCmdFormatConditionals contained /%?[pfsar]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from status_format_str in status.c
syn match muttrcStatusFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[bdfFhlLmMnopPrsStuvV%]/
syn match muttrcStatusFormatEscapes contained /%[>|*]./
syn match muttrcStatusFormatConditionals contained /%?[bdFlLmMnoptuV]?/ nextgroup=muttrcFormatConditionals2
" This matches the documentation, but directly contradicts the code
" (according to the code, this should be identical to the
" muttrcPGPCmdFormatEscapes
syn match muttrcPGPGetKeysFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[r%]/
" The following info was pulled from _mutt_fmt_smime_command in
" smime.c
syn match muttrcSmimeFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[Cciskaf%]/
syn match muttrcSmimeFormatConditionals contained /%?[Cciskaf]?/ nextgroup=muttrcFormatConditionals2

syn region muttrcTimeEscapes contained start=+%{+ end=+}+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%(+ end=+)+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%<+ end=+>+ contains=muttrcStrftimeEscapes
syn region muttrcPGPTimeEscapes contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes

syn match muttrcVPrefix		contained /[?&]/ nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn match muttrcVarStr		contained skipwhite 'my_[a-zA-Z0-9_]\+' nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool	contained skipwhite imap_force_ssl noimap_force_ssl invimap_force_ssl nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
"syn keyword muttrcVarQuad	contained nopgp_create_traditional invpgp_create_traditional
syn keyword muttrcVarStr	contained skipwhite alternates nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcMenu		contained alias attach browser compose editor index pager postpone pgp mix query generic
syn match muttrcMenuList "\S\+" contained contains=muttrcMenu
syn match muttrcMenuCommas /,/ contained

syn keyword muttrcCommand 	skipwhite spam nextgroup=muttrcSpamPattern
syn region muttrcSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL
syn region muttrcSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL

syn keyword muttrcCommand 	skipwhite nospam nextgroup=muttrcNoSpamPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern

syn match muttrcAttachmentsMimeType contained "[*a-z0-9_-]\+/[*a-z0-9._-]\+\s*" skipwhite nextgroup=muttrcAttachmentsMimeType
syn match muttrcAttachmentsFlag contained "[+-]\%([AI]\|inline\|attachment\)\s\+" skipwhite nextgroup=muttrcAttachmentsMimeType
syn match muttrcAttachmentsLine "^\s*\%(un\)\?attachments\s\+" skipwhite nextgroup=muttrcAttachmentsFlag

syn match muttrcUnHighlightSpace contained "\%(\s\+\|\\$\)"

syn keyword muttrcAsterisk	contained *
syn keyword muttrcListsKeyword	lists skipwhite nextgroup=muttrcGroupDef,muttrcComment
syn keyword muttrcListsKeyword	unlists skipwhite nextgroup=muttrcAsterisk,muttrcComment

syn keyword muttrcSubscribeKeyword	subscribe nextgroup=muttrcGroupDef,muttrcComment
syn keyword muttrcSubscribeKeyword	unsubscribe nextgroup=muttrcAsterisk,muttrcComment

syn keyword muttrcAlternateKeyword contained alternates unalternates
syn region muttrcAlternatesLine keepend start=+^\s*\%(un\)\?alternates\s+ skip=+\\$+ end=+$+ contains=muttrcAlternateKeyword,muttrcGroupDef,muttrcRXPat,muttrcUnHighlightSpace,muttrcComment

" muttrcVariable includes a prefix because partial strings are considered
" valid.
syn match muttrcVariable	contained "\\\@<![a-zA-Z_-]*\$[a-zA-Z_-]\+" contains=muttrcVariableInner
syn match muttrcVariableInner	contained "\$[a-zA-Z_-]\+"
syn match muttrcEscapedVariable	contained "\\\$[a-zA-Z_-]\+"

syn match muttrcBadAction	contained "[^<>]\+" contains=muttrcEmail
syn match muttrcAction		contained "<[^>]\{-}>" contains=muttrcBadAction,muttrcFunction,muttrcKeyName

syn keyword muttrcCommand	set     skipwhite nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	unset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	reset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	toggle  skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" First, functions that take regular expressions:
syn match  muttrcRXHookNot	contained /!\s*/ skipwhite nextgroup=muttrcRXHookString,muttrcRXHookStringNL
syn match  muttrcRXHooks	/\<\%(account\|folder\)-hook\>/ skipwhite nextgroup=muttrcRXHookNot,muttrcRXHookString,muttrcRXHookStringNL

" Now, functions that take patterns
syn match muttrcPatHookNot	contained /!\s*/ skipwhite nextgroup=muttrcPattern
syn match muttrcPatHooks	/\<\%(mbox\|crypt\)-hook\>/ skipwhite nextgroup=muttrcPatHookNot,muttrcPattern
syn match muttrcPatHooks	/\<\%(message\|reply\|send\|send2\|save\|\|fcc\%(-save\)\?\)-hook\>/ skipwhite nextgroup=muttrcPatHookNot,muttrcOptPattern

syn match muttrcBindFunction	contained /\S\+\>/ skipwhite contains=muttrcFunction
syn match muttrcBindFunctionNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syn match muttrcBindKey		contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syn match muttrcBindKeyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindKey,muttrcBindKeyNL
syn match muttrcBindMenuList	contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcBindKey,muttrcBindKeyNL
syn match muttrcBindMenuListNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindMenuList,muttrcBindMenuListNL
syn keyword muttrcCommand	skipwhite bind nextgroup=muttrcBindMenuList,muttrcBindMenuListNL

syn region muttrcMacroDescr	contained keepend skipwhite start=+\s*\S+ms=e skip=+\\ + end=+ \|$+me=s
syn region muttrcMacroDescr	contained keepend skipwhite start=+'+ms=e skip=+\\'+ end=+'+me=s
syn region muttrcMacroDescr	contained keepend skipwhite start=+"+ms=e skip=+\\"+ end=+"+me=s
syn match muttrcMacroDescrNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody	contained skipwhite start="\S" skip='\\ \|\\$' end=' \|$' contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcCommand,muttrcAction nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody matchgroup=Type contained skipwhite start=+'+ms=e skip=+\\'+ end=+'\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody matchgroup=Type contained skipwhite start=+"+ms=e skip=+\\"+ end=+"\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn match muttrcMacroBodyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syn match muttrcMacroKey	contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syn match muttrcMacroKeyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syn match muttrcMacroMenuList	contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syn match muttrcMacroMenuListNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL
syn keyword muttrcCommand	skipwhite macro	nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL

syn match muttrcAddrContent	contained "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+\s*" skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn region muttrcAddrContent	contained start=+'+ end=+'\s*+ skip=+\\'+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn region muttrcAddrContent	contained start=+"+ end=+"\s*+ skip=+\\"+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn match muttrcAddrDef 	contained "-addr\s\+" skipwhite nextgroup=muttrcAddrContent

syn match muttrcGroupFlag	contained "-group"
syn region muttrcGroupDef	contained start="-group\s\+" skip="\\$" end="\s" skipwhite keepend contains=muttrcGroupFlag,muttrcUnHighlightSpace

syn keyword muttrcGroupKeyword	contained group ungroup
syn region muttrcGroupLine	keepend start=+^\s*\%(un\)\?group\s+ skip=+\\$+ end=+$+ contains=muttrcGroupKeyword,muttrcGroupDef,muttrcAddrDef,muttrcRXDef,muttrcUnHighlightSpace,muttrcComment

syn match muttrcAliasGroupName	contained /\w\+/ skipwhite nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syn match muttrcAliasGroupDefNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL
syn match muttrcAliasGroupDef	contained /\s*-group/ skipwhite nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL contains=muttrcGroupFlag
syn match muttrcAliasComma	contained /,/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasEmail	contained /\S\+@\S\+/ contains=muttrcEmail nextgroup=muttrcAliasName,muttrcAliasNameNL skipwhite
syn match muttrcAliasEncEmail	contained /<[^>]\+>/ contains=muttrcEmail nextgroup=muttrcAliasComma
syn match muttrcAliasEncEmailNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syn match muttrcAliasNameNoParens contained /[^<(@]\+\s\+/ nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syn region muttrcAliasName	contained matchgroup=Type start=/(/ end=/)/ skipwhite
syn match muttrcAliasNameNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasName,muttrcAliasNameNL
syn match muttrcAliasENNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasKey	contained /\s*[^- \t]\S\+/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasNL		contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syn keyword muttrcCommand	skipwhite alias nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL

syn match muttrcUnAliasKey	contained "\s*\w\+\s*" skipwhite nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syn match muttrcUnAliasNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syn keyword muttrcCommand	skipwhite unalias nextgroup=muttrcUnAliasKey,muttrcUnAliasNL

syn match muttrcSimplePat contained "!\?\^\?[~][ADEFgGklNOpPQRSTuUvV=$]"
syn match muttrcSimplePat contained "!\?\^\?[~][mnXz]\s*\%([<>-][0-9]\+[kM]\?\|[0-9]\+[kM]\?[-]\%([0-9]\+[kM]\?\)\?\)"
syn match muttrcSimplePat contained "!\?\^\?[~][dr]\s*\%(\%(-\?[0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)*\)\|\%(\%([0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)*\)-\%([0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)\?\)\?\)\|\%([<>=][0-9]\+[ymwd]\)\|\%(`[^`]\+`\)\|\%(\$[a-zA-Z0-9_-]\+\)\)" contains=muttrcShellString,muttrcVariable
syn match muttrcSimplePat contained "!\?\^\?[~][bBcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatRXContainer
syn match muttrcSimplePat contained "!\?\^\?[%][bBcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatString
syn match muttrcSimplePat contained "!\?\^\?[=][bcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatString
syn region muttrcSimplePat contained keepend start=+!\?\^\?[~](+ end=+)+ contains=muttrcSimplePat
"syn match muttrcSimplePat contained /'[^~=%][^']*/ contains=muttrcRXString
syn region muttrcSimplePatString contained keepend start=+"+ end=+"+ skip=+\\"+
syn region muttrcSimplePatString contained keepend start=+'+ end=+'+ skip=+\\'+
syn region muttrcSimplePatString contained keepend start=+[^ 	"']+ skip=+\\ + end=+\s+re=e-1
syn region muttrcSimplePatRXContainer contained keepend start=+"+ end=+"+ skip=+\\"+ contains=muttrcRXString
syn region muttrcSimplePatRXContainer contained keepend start=+'+ end=+'+ skip=+\\'+ contains=muttrcRXString
syn region muttrcSimplePatRXContainer contained keepend start=+[^ 	"']+ skip=+\\ + end=+\s+re=e-1 contains=muttrcRXString
syn match muttrcSimplePatMetas contained /[(|)]/

syn match muttrcOptSimplePat contained skipwhite /[~=%!(^].*/ contains=muttrcSimplePat,muttrcSimplePatMetas
syn match muttrcOptSimplePat contained skipwhite /[^~=%!(^].*/ contains=muttrcRXString
syn region muttrcOptPattern contained matchgroup=Type keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcOptSimplePat,muttrcUnHighlightSpace nextgroup=muttrcString,muttrcStringNL
syn region muttrcOptPattern contained matchgroup=Type keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcOptSimplePat,muttrcUnHighlightSpace nextgroup=muttrcString,muttrcStringNL
syn region muttrcOptPattern contained keepend skipwhite start=+[~](+ end=+)+ skip=+\\)+ contains=muttrcSimplePat nextgroup=muttrcString,muttrcStringNL
syn match muttrcOptPattern contained skipwhite /[~][A-Za-z]/ contains=muttrcSimplePat nextgroup=muttrcString,muttrcStringNL
syn match muttrcOptPattern contained skipwhite /[.]/ nextgroup=muttrcString,muttrcStringNL
" Keep muttrcPattern and muttrcOptPattern synchronized
syn region muttrcPattern contained matchgroup=Type keepend skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syn region muttrcPattern contained matchgroup=Type keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syn region muttrcPattern contained keepend skipwhite start=+[~](+ end=+)+ skip=+\\)+ contains=muttrcSimplePat
syn match muttrcPattern contained skipwhite /[~][A-Za-z]/ contains=muttrcSimplePat
syn match muttrcPattern contained skipwhite /[.]/
syn region muttrcPatternInner contained keepend start=+"[~=%!(^]+ms=s+1 skip=+\\"+ end=+"+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syn region muttrcPatternInner contained keepend start=+'[~=%!(^]+ms=s+1 skip=+\\'+ end=+'+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas

" Colour definitions takes object, foreground and background arguments (regexps excluded).
syn match muttrcColorMatchCount	contained "[0-9]\+"
syn match muttrcColorMatchCountNL contained skipwhite skipnl "\s*\\$" nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn region muttrcColorRXPat	contained start=+\s*'+ skip=+\\'+ end=+'\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn region muttrcColorRXPat	contained start=+\s*"+ skip=+\\"+ end=+"\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn keyword muttrcColor	contained black blue cyan default green magenta red white yellow
syn keyword muttrcColor	contained brightblack brightblue brightcyan brightdefault brightgreen brightmagenta brightred brightwhite brightyellow
syn match   muttrcColor	contained "\<\%(bright\)\=color\d\{1,3}\>"
" Now for the structure of the color line
syn match muttrcColorRXNL	contained skipnl "\s*\\$" nextgroup=muttrcColorRXPat,muttrcColorRXNL
syn match muttrcColorBG 	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorRXPat,muttrcColorRXNL
syn match muttrcColorBGNL	contained skipnl "\s*\\$" nextgroup=muttrcColorBG,muttrcColorBGNL
syn match muttrcColorFG 	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBG,muttrcColorBGNL
syn match muttrcColorFGNL	contained skipnl "\s*\\$" nextgroup=muttrcColorFG,muttrcColorFGNL
syn match muttrcColorContext 	contained /\s*[$]\?\w\+/ contains=muttrcColorField,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorFG,muttrcColorFGNL
syn match muttrcColorNL 	contained skipnl "\s*\\$" nextgroup=muttrcColorContext,muttrcColorNL
syn match muttrcColorKeyword	contained /^\s*color\s\+/ nextgroup=muttrcColorContext,muttrcColorNL
syn region muttrcColorLine keepend start=/^\s*color\s\+\%(index\|header\)\@!/ skip=+\\$+ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace
" Now for the structure of the color index line
syn match muttrcPatternNL	contained skipnl "\s*\\$" nextgroup=muttrcPattern,muttrcPatternNL
syn match muttrcColorBGI	contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcPattern,muttrcPatternNL
syn match muttrcColorBGNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorBGI,muttrcColorBGNLI
syn match muttrcColorFGI	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGI,muttrcColorBGNLI
syn match muttrcColorFGNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorFGI,muttrcColorFGNLI
syn match muttrcColorContextI	contained /\s*\<index\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGI,muttrcColorFGNLI
syn match muttrcColorNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorContextI,muttrcColorNLI
syn match muttrcColorKeywordI	contained skipwhite /\<color\>/ nextgroup=muttrcColorContextI,muttrcColorNLI
syn region muttrcColorLine keepend skipwhite start=/\<color\s\+index\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordI,muttrcComment,muttrcUnHighlightSpace
" Now for the structure of the color header line
syn match muttrcRXPatternNL	contained skipnl "\s*\\$" nextgroup=muttrcRXString,muttrcRXPatternNL
syn match muttrcColorBGH	contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcRXString,muttrcRXPatternNL
syn match muttrcColorBGNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorBGH,muttrcColorBGNLH
syn match muttrcColorFGH	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGH,muttrcColorBGNLH
syn match muttrcColorFGNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorFGH,muttrcColorFGNLH
syn match muttrcColorContextH	contained /\s*\<header\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGH,muttrcColorFGNLH
syn match muttrcColorNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorContextH,muttrcColorNLH
syn match muttrcColorKeywordH	contained skipwhite /\<color\>/ nextgroup=muttrcColorContextH,muttrcColorNLH
syn region muttrcColorLine keepend skipwhite start=/\<color\s\+header\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordH,muttrcComment,muttrcUnHighlightSpace
" And now color's brother:
syn region muttrcUnColorPatterns contained skipwhite start=+\s*'+ end=+'+ skip=+\\'+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn region muttrcUnColorPatterns contained skipwhite start=+\s*"+ end=+"+ skip=+\\"+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorPatterns contained skipwhite /\s*[^'"\s]\S\*/ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorPatNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorAll	contained skipwhite /[*]/
syn match muttrcUnColorAPNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syn match muttrcUnColorIndex	contained skipwhite /\s*index\s\+/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syn match muttrcUnColorIndexNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syn match muttrcUnColorKeyword	contained skipwhite /^\s*uncolor\s\+/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syn region muttrcUnColorLine keepend start=+^\s*uncolor\s+ skip=+\\$+ end=+$+ contains=muttrcUnColorKeyword,muttrcComment,muttrcUnHighlightSpace

" Mono are almost like color (ojects inherited from color)
syn keyword muttrcMonoAttrib	contained bold none normal reverse standout underline
syn keyword muttrcMono		contained mono		skipwhite nextgroup=muttrcColorField
syn match   muttrcMonoLine	"^\s*mono\s\+\S\+"	skipwhite nextgroup=muttrcMonoAttrib contains=muttrcMono

" neomutt address config variables

syn keyword muttrcVarAddr contained skipwhite
	\ envelope_from_address from

hi def link muttrcVarAddr muttrcVarStr

" neomutt boolean config variables
" For each variable X: X, noX and invX are defined
" Note: the nextgroup's are different -- I think they should be the same

syn keyword muttrcVarBool contained skipwhite
	\ allow_8bit allow_ansi arrow_cursor ascii_chars askbcc askcc
	\ ask_follow_up ask_x_comment_to attach_split autoedit auto_tag beep
	\ beep_new bounce_delivered braille_friendly check_mbox_size check_new
	\ collapse_all collapse_flagged collapse_unread confirmappend
	\ confirmcreate crypt_autoencrypt crypt_autopgp crypt_autosign
	\ crypt_autosmime crypt_confirmhook crypt_opportunistic_encrypt
	\ crypt_replyencrypt crypt_replysign crypt_replysignencrypted
	\ crypt_timestamp crypt_use_gpgme crypt_use_pka delete_untag
	\ digest_collapse duplicate_threads edit_headers encode_from fast_reply
	\ fcc_clear flag_safe followup_to force_name forward_decode
	\ forward_decrypt forward_quote forward_references hdrs header
	\ header_cache_compress header_color_partial help hidden_host
	\ hide_limited hide_missing hide_thread_subject hide_top_limited
	\ hide_top_missing history_remove_dups honor_disposition idn_decode
	\ idn_encode ignore_linear_white_space ignore_list_reply_to
	\ imap_check_subscribed imap_idle imap_list_subscribed imap_passive
	\ imap_peek imap_servernoise implicit_autoview include_onlyfirst
	\ keep_flagged keywords_legacy keywords_standard mailcap_sanitize
	\ maildir_check_cur maildir_header_cache_verify maildir_trash
	\ mail_check_recent mail_check_stats markers mark_old menu_move_off
	\ menu_scroll message_cache_clean meta_key metoo mh_purge
	\ mime_forward_decode mime_subject mime_type_query_first narrow_tree
	\ nm_record nntp_listgroup nntp_load_description pager_stop
	\ pgp_autoinline pgp_auto_decode pgp_check_exit pgp_ignore_subkeys
	\ pgp_long_ids pgp_replyinline pgp_retainable_sigs pgp_self_encrypt
	\ pgp_show_unusable pgp_strict_enc pgp_use_gpg_agent pipe_decode
	\ pipe_split pop_auth_try_all pop_last postpone_encrypt print_decode
	\ print_split prompt_after read_only reflow_space_quotes reflow_text
	\ reply_self reply_with_xorig resolve resume_draft_files
	\ resume_edited_draft_files reverse_alias reverse_name reverse_realname
	\ rfc2047_parameters save_address save_empty save_name save_unsubscribed
	\ score show_new_news show_only_unread sidebar_folder_indent
	\ sidebar_new_mail_only sidebar_next_new_wrap sidebar_on_right
	\ sidebar_short_path sidebar_visible sig_dashes sig_on_top smart_wrap
	\ smime_ask_cert_label smime_decrypt_use_default_key smime_is_default
	\ smime_self_encrypt sort_re ssl_force_tls ssl_usesystemcerts
	\ ssl_use_sslv2 ssl_use_sslv3 ssl_use_tlsv1 ssl_use_tlsv1_1
	\ ssl_use_tlsv1_2 ssl_verify_dates ssl_verify_host
	\ ssl_verify_partial_chains status_on_top strict_threads suspend
	\ text_flowed thorough_search thread_received tilde ts_enabled
	\ uncollapse_jump uncollapse_new user_agent use_8bitmime use_domain
	\ use_envelope_from use_from use_ipv6 virtual_spoolfile wait_key weed
	\ wrap_search write_bcc x_comment_to
	\ nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool skipwhite contained
	\ noallow_8bit noallow_ansi noarrow_cursor noascii_chars noaskbcc noaskcc
	\ noask_follow_up noask_x_comment_to noattach_split noautoedit noauto_tag nobeep
	\ nobeep_new nobounce_delivered nobraille_friendly nocheck_mbox_size nocheck_new
	\ nocollapse_all nocollapse_flagged nocollapse_unread noconfirmappend
	\ noconfirmcreate nocrypt_autoencrypt nocrypt_autopgp nocrypt_autosign
	\ nocrypt_autosmime nocrypt_confirmhook nocrypt_opportunistic_encrypt
	\ nocrypt_replyencrypt nocrypt_replysign nocrypt_replysignencrypted
	\ nocrypt_timestamp nocrypt_use_gpgme nocrypt_use_pka nodelete_untag
	\ nodigest_collapse noduplicate_threads noedit_headers noencode_from nofast_reply
	\ nofcc_clear noflag_safe nofollowup_to noforce_name noforward_decode
	\ noforward_decrypt noforward_quote noforward_references nohdrs noheader
	\ noheader_cache_compress noheader_color_partial nohelp nohidden_host
	\ nohide_limited nohide_missing nohide_thread_subject nohide_top_limited
	\ nohide_top_missing nohistory_remove_dups nohonor_disposition noidn_decode
	\ noidn_encode noignore_linear_white_space noignore_list_reply_to
	\ noimap_check_subscribed noimap_idle noimap_list_subscribed noimap_passive
	\ noimap_peek noimap_servernoise noimplicit_autoview noinclude_onlyfirst
	\ nokeep_flagged nokeywords_legacy nokeywords_standard nomailcap_sanitize
	\ nomaildir_check_cur nomaildir_header_cache_verify nomaildir_trash
	\ nomail_check_recent nomail_check_stats nomarkers nomark_old nomenu_move_off
	\ nomenu_scroll nomessage_cache_clean nometa_key nometoo nomh_purge
	\ nomime_forward_decode nomime_subject nomime_type_query_first nonarrow_tree
	\ nonm_record nonntp_listgroup nonntp_load_description nopager_stop
	\ nopgp_autoinline nopgp_auto_decode nopgp_check_exit nopgp_ignore_subkeys
	\ nopgp_long_ids nopgp_replyinline nopgp_retainable_sigs nopgp_self_encrypt
	\ nopgp_show_unusable nopgp_strict_enc nopgp_use_gpg_agent nopipe_decode
	\ nopipe_split nopop_auth_try_all nopop_last nopostpone_encrypt noprint_decode
	\ noprint_split noprompt_after noread_only noreflow_space_quotes noreflow_text
	\ noreply_self noreply_with_xorig noresolve noresume_draft_files
	\ noresume_edited_draft_files noreverse_alias noreverse_name noreverse_realname
	\ norfc2047_parameters nosave_address nosave_empty nosave_name nosave_unsubscribed
	\ noscore noshow_new_news noshow_only_unread nosidebar_folder_indent
	\ nosidebar_new_mail_only nosidebar_next_new_wrap nosidebar_on_right
	\ nosidebar_short_path nosidebar_visible nosig_dashes nosig_on_top nosmart_wrap
	\ nosmime_ask_cert_label nosmime_decrypt_use_default_key nosmime_is_default
	\ nosmime_self_encrypt nosort_re nossl_force_tls nossl_usesystemcerts
	\ nossl_use_sslv2 nossl_use_sslv3 nossl_use_tlsv1 nossl_use_tlsv1_1
	\ nossl_use_tlsv1_2 nossl_verify_dates nossl_verify_host
	\ nossl_verify_partial_chains nostatus_on_top nostrict_threads nosuspend
	\ notext_flowed nothorough_search nothread_received notilde nots_enabled
	\ nouncollapse_jump nouncollapse_new nouser_agent nouse_8bitmime nouse_domain
	\ nouse_envelope_from nouse_from nouse_ipv6 novirtual_spoolfile nowait_key noweed
	\ nowrap_search nowrite_bcc nox_comment_to
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool skipwhite contained
	\ invallow_8bit invallow_ansi invarrow_cursor invascii_chars invaskbcc invaskcc
	\ invask_follow_up invask_x_comment_to invattach_split invautoedit invauto_tag invbeep
	\ invbeep_new invbounce_delivered invbraille_friendly invcheck_mbox_size invcheck_new
	\ invcollapse_all invcollapse_flagged invcollapse_unread invconfirmappend
	\ invconfirmcreate invcrypt_autoencrypt invcrypt_autopgp invcrypt_autosign
	\ invcrypt_autosmime invcrypt_confirmhook invcrypt_opportunistic_encrypt
	\ invcrypt_replyencrypt invcrypt_replysign invcrypt_replysignencrypted
	\ invcrypt_timestamp invcrypt_use_gpgme invcrypt_use_pka invdelete_untag
	\ invdigest_collapse invduplicate_threads invedit_headers invencode_from invfast_reply
	\ invfcc_clear invflag_safe invfollowup_to invforce_name invforward_decode
	\ invforward_decrypt invforward_quote invforward_references invhdrs invheader
	\ invheader_cache_compress invheader_color_partial invhelp invhidden_host
	\ invhide_limited invhide_missing invhide_thread_subject invhide_top_limited
	\ invhide_top_missing invhistory_remove_dups invhonor_disposition invidn_decode
	\ invidn_encode invignore_linear_white_space invignore_list_reply_to
	\ invimap_check_subscribed invimap_idle invimap_list_subscribed invimap_passive
	\ invimap_peek invimap_servernoise invimplicit_autoview invinclude_onlyfirst
	\ invkeep_flagged invkeywords_legacy invkeywords_standard invmailcap_sanitize
	\ invmaildir_check_cur invmaildir_header_cache_verify invmaildir_trash
	\ invmail_check_recent invmail_check_stats invmarkers invmark_old invmenu_move_off
	\ invmenu_scroll invmessage_cache_clean invmeta_key invmetoo invmh_purge
	\ invmime_forward_decode invmime_subject invmime_type_query_first invnarrow_tree
	\ invnm_record invnntp_listgroup invnntp_load_description invpager_stop
	\ invpgp_autoinline invpgp_auto_decode invpgp_check_exit invpgp_ignore_subkeys
	\ invpgp_long_ids invpgp_replyinline invpgp_retainable_sigs invpgp_self_encrypt
	\ invpgp_show_unusable invpgp_strict_enc invpgp_use_gpg_agent invpipe_decode
	\ invpipe_split invpop_auth_try_all invpop_last invpostpone_encrypt invprint_decode
	\ invprint_split invprompt_after invread_only invreflow_space_quotes invreflow_text
	\ invreply_self invreply_with_xorig invresolve invresume_draft_files
	\ invresume_edited_draft_files invreverse_alias invreverse_name invreverse_realname
	\ invrfc2047_parameters invsave_address invsave_empty invsave_name invsave_unsubscribed
	\ invscore invshow_new_news invshow_only_unread invsidebar_folder_indent
	\ invsidebar_new_mail_only invsidebar_next_new_wrap invsidebar_on_right
	\ invsidebar_short_path invsidebar_visible invsig_dashes invsig_on_top invsmart_wrap
	\ invsmime_ask_cert_label invsmime_decrypt_use_default_key invsmime_is_default
	\ invsmime_self_encrypt invsort_re invssl_force_tls invssl_usesystemcerts
	\ invssl_use_sslv2 invssl_use_sslv3 invssl_use_tlsv1 invssl_use_tlsv1_1
	\ invssl_use_tlsv1_2 invssl_verify_dates invssl_verify_host
	\ invssl_verify_partial_chains invstatus_on_top invstrict_threads invsuspend
	\ invtext_flowed invthorough_search invthread_received invtilde invts_enabled
	\ invuncollapse_jump invuncollapse_new invuser_agent invuse_8bitmime invuse_domain
	\ invuse_envelope_from invuse_from invuse_ipv6 invvirtual_spoolfile invwait_key invweed
	\ invwrap_search invwrite_bcc invx_comment_to
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" neomutt hcache config variables

syn keyword muttrcVarHcache contained skipwhite
	\ header_cache_backend

hi def link muttrcVarHcache muttrcVarStr

" neomutt magic config variables

syn keyword muttrcVarMagic contained skipwhite
	\ mbox_type

hi def link muttrcVarMagic muttrcVarStr

" neomutt mbtable config variables

syn keyword muttrcVarMbTable contained skipwhite
	\ flag_chars from_chars status_chars to_chars

hi def link muttrcVarMbTable muttrcVarStr

" neomutt number config variables

syn keyword muttrcVarNum skipwhite contained
	\ connect_timeout debug_level history imap_keepalive imap_pipeline_depth
	\ imap_poll_timeout mail_check mail_check_stats_interval menu_context
	\ net_inc nm_db_limit nm_open_timeout nm_query_window_current_position
	\ nm_query_window_duration nntp_context nntp_poll pager_context
	\ pager_index_lines pgp_timeout pop_checkinterval read_inc reflow_wrap
	\ save_history score_threshold_delete score_threshold_flag
	\ score_threshold_read search_context sendmail_wait sidebar_width
	\ skip_quoted_offset sleep_time smime_timeout ssl_min_dh_prime_bits
	\ timeout time_inc wrap wrapmargin wrap_headers write_inc
	\ nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" neomutt path config variables

syn keyword muttrcVarPath contained skipwhite
	\ alias_file certificate_file debug_file display_filter editor
	\ entropy_file folder header_cache history_file inews ispell mbox
	\ message_cachedir mixmaster newsrc news_cache_dir new_mail_command
	\ pager postponed print_command query_command record sendmail shell
	\ signature smime_ca_location smime_certificates smime_keys spoolfile
	\ ssl_ca_certificates_file ssl_client_cert tmpdir trash visual

hi def link muttrcVarPath muttrcVarStr

" neomutt quad config variables
" For each variable X: X, noX and invX are defined
" Note: the nextgroup's are different -- I think they should be the same

syn keyword muttrcVarQuad skipwhite contained
	\ abort_noattach abort_nosubject abort_unmodified bounce
	\ catchup_newsgroup copy crypt_verify_sig delete fcc_attach
	\ followup_to_poster forward_edit honor_followup_to include mime_forward
	\ mime_forward_rest move pgp_encrypt_self pgp_mime_auto pop_delete
	\ pop_reconnect postpone post_moderated print quit recall reply_to
	\ smime_encrypt_self ssl_starttls
	\ nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad skipwhite contained
	\ noabort_noattach noabort_nosubject noabort_unmodified nobounce
	\ nocatchup_newsgroup nocopy nocrypt_verify_sig nodelete nofcc_attach
	\ nofollowup_to_poster noforward_edit nohonor_followup_to noinclude nomime_forward
	\ nomime_forward_rest nomove nopgp_encrypt_self nopgp_mime_auto nopop_delete
	\ nopop_reconnect nopostpone nopost_moderated noprint noquit norecall noreply_to
	\ nosmime_encrypt_self nossl_starttls
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad skipwhite contained
	\ invabort_noattach invabort_nosubject invabort_unmodified invbounce
	\ invcatchup_newsgroup invcopy invcrypt_verify_sig invdelete invfcc_attach
	\ invfollowup_to_poster invforward_edit invhonor_followup_to invinclude invmime_forward
	\ invmime_forward_rest invmove invpgp_encrypt_self invpgp_mime_auto invpop_delete
	\ invpop_reconnect invpostpone invpost_moderated invprint invquit invrecall invreply_to
	\ invsmime_encrypt_self invssl_starttls
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" neomutt regex config variables

syn keyword muttrcVarRegex contained skipwhite
	\ attach_keyword gecos_mask mask pgp_decryption_okay pgp_good_sign
	\ quote_regexp reply_regexp smileys

hi def link muttrcVarRegex muttrcVarStr

" neomutt sort config variables

syn keyword muttrcVarSort contained skipwhite
	\ sort sort_alias sort_aux sort_browser pgp_sort_keys
	\ sidebar_sort_method

hi def link muttrcVarSort muttrcVarStr

" neomutt string config variables

syn keyword muttrcVarStr contained skipwhite
	\ assumed_charset attach_charset attach_sep attribution_locale charset
	\ config_charset content_type default_hook dsn_notify dsn_return
	\ empty_subject escape forward_attribution_intro
	\ forward_attribution_trailer forward_format header_cache_pagesize
	\ hostname imap_authenticators imap_delim_chars imap_headers imap_login
	\ imap_pass imap_user indent_string mailcap_path mark_macro_prefix
	\ mh_seq_flagged mh_seq_replied mh_seq_unseen mime_type_query_command
	\ newsgroups_charset news_server nm_default_uri nm_exclude_tags
	\ nm_hidden_tags nm_query_type nm_query_window_current_search
	\ nm_query_window_timebase nm_record_tags nm_unread_tag
	\ nntp_authenticators nntp_pass nntp_user pgp_self_encrypt_as
	\ pgp_sign_as pipe_sep pop_authenticators pop_host pop_pass pop_user
	\ postpone_encrypt_as post_indent_string preconnect realname
	\ send_charset show_multipart_alternative sidebar_delim_chars
	\ sidebar_divider_char sidebar_indent_string simple_search
	\ smime_default_key smime_encrypt_with smime_self_encrypt_as
	\ smime_sign_digest_alg smtp_authenticators smtp_pass smtp_url
	\ spam_separator ssl_ciphers tunnel xlabel_delimiter
	\ nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarStr contained skipwhite alias_format
	\ nextgroup=muttrcVarEqualsAliasFmt
syn keyword muttrcVarStr contained skipwhite attach_format
	\ nextgroup=muttrcVarEqualsAttachFmt
syn keyword muttrcVarStr contained skipwhite compose_format
	\ nextgroup=muttrcVarEqualsComposeFmt
syn keyword muttrcVarStr contained skipwhite folder_format
	\ nextgroup=muttrcVarEqualsFolderFmt
syn keyword muttrcVarStr contained skipwhite attribution group_index_format index_format message_format pager_format sidebar_format vfolder_format
	\ nextgroup=muttrcVarEqualsIdxFmt
syn keyword muttrcVarStr contained skipwhite mix_entry_format
	\ nextgroup=muttrcVarEqualsMixFmt
syn keyword muttrcVarStr contained skipwhite pgp_clearsign_command pgp_decode_command pgp_decrypt_command pgp_encrypt_only_command pgp_encrypt_sign_command pgp_export_command pgp_import_command pgp_list_pubring_command pgp_list_secring_command pgp_sign_command pgp_verify_command pgp_verify_key_command
	\ nextgroup=muttrcVarEqualsPGPCmdFmt
syn keyword muttrcVarStr contained skipwhite pgp_entry_format
	\ nextgroup=muttrcVarEqualsPGPFmt
syn keyword muttrcVarStr contained skipwhite pgp_getkeys_command
	\ nextgroup=muttrcVarEqualsPGPGetKeysFmt
syn keyword muttrcVarStr contained skipwhite query_format
	\ nextgroup=muttrcVarEqualsQueryFmt
syn keyword muttrcVarStr contained skipwhite smime_decrypt_command smime_encrypt_command smime_get_cert_command smime_get_cert_email_command smime_get_signer_cert_command smime_import_cert_command smime_pk7out_command smime_sign_command smime_verify_command smime_verify_opaque_command
	\ nextgroup=muttrcVarEqualsSmimeFmt
syn keyword muttrcVarStr contained skipwhite ts_icon_format ts_status_format status_format
	\ nextgroup=muttrcVarEqualsStatusFmt
syn keyword muttrcVarStr contained skipwhite date_format
	\ nextgroup=muttrcVarEqualsStrftimeFmt

syn match muttrcVarEqualsIdxFmt        contained skipwhite "=" nextgroup=muttrcIndexFormatStr
syn match muttrcVarEqualsAliasFmt      contained skipwhite "=" nextgroup=muttrcAliasFormatStr
syn match muttrcVarEqualsAttachFmt     contained skipwhite "=" nextgroup=muttrcAttachFormatStr
syn match muttrcVarEqualsComposeFmt    contained skipwhite "=" nextgroup=muttrcComposeFormatStr
syn match muttrcVarEqualsFolderFmt     contained skipwhite "=" nextgroup=muttrcFolderFormatStr
syn match muttrcVarEqualsMixFmt        contained skipwhite "=" nextgroup=muttrcMixFormatStr
syn match muttrcVarEqualsPGPFmt        contained skipwhite "=" nextgroup=muttrcPGPFormatStr
syn match muttrcVarEqualsQueryFmt      contained skipwhite "=" nextgroup=muttrcQueryFormatStr
syn match muttrcVarEqualsPGPCmdFmt     contained skipwhite "=" nextgroup=muttrcPGPCmdFormatStr
syn match muttrcVarEqualsStatusFmt     contained skipwhite "=" nextgroup=muttrcStatusFormatStr
syn match muttrcVarEqualsPGPGetKeysFmt contained skipwhite "=" nextgroup=muttrcPGPGetKeysFormatStr
syn match muttrcVarEqualsSmimeFmt      contained skipwhite "=" nextgroup=muttrcSmimeFormatStr
syn match muttrcVarEqualsStrftimeFmt   contained skipwhite "=" nextgroup=muttrcStrftimeFormatStr

" neomutt synonym config variables

syn keyword muttrcSynonym contained skipwhite
	\ edit_hdrs envelope_from forw_decode forw_decrypt forw_format
	\ forw_quote hdr_format indent_str mime_fwd msg_format pgp_autoencrypt
	\ pgp_autosign pgp_auto_traditional pgp_create_traditional
	\ pgp_replyencrypt pgp_replysign pgp_replysignencrypted pgp_verify_sig
	\ post_indent_str print_cmd smime_sign_as xterm_icon xterm_set_titles
	\ xterm_title

hi def link muttrcSynonym Error

" neomutt alias functions

syn match muttrcFunction contained "\v<%(delete-entry|undelete-entry)>"

" neomutt attach functions

syn match muttrcFunction contained "\v<%(bounce-message|check-traditional-pgp|collapse-parts|delete-entry|display-toggle-weed|edit-type|extract-keys|followup-message|forget-passphrase|forward-message)>"
syn match muttrcFunction contained "\v<%(forward-to-group|group-reply|list-reply|pipe-entry|print-entry|reply|resend-message|save-entry|undelete-entry|view-attach)>"
syn match muttrcFunction contained "\v<%(view-mailcap|view-text)>"

" neomutt browser functions

syn match muttrcFunction contained "\v<%(buffy-list|catchup|change-dir|check-new|create-mailbox|delete-mailbox|display-filename|enter-mask|goto-folder|reload-active)>"
syn match muttrcFunction contained "\v<%(rename-mailbox|select-new|sort|sort-reverse|subscribe|subscribe-pattern|toggle-mailboxes|toggle-subscribed|uncatchup|unsubscribe)>"
syn match muttrcFunction contained "\v<%(unsubscribe-pattern|view-file)>"

" neomutt compose functions

syn match muttrcFunction contained "\v<%(attach-file|attach-key|attach-message|attach-news-message|copy-file|detach-file|display-toggle-weed|edit-bcc|edit-cc|edit-description)>"
syn match muttrcFunction contained "\v<%(edit-encoding|edit-fcc|edit-file|edit-followup-to|edit-from|edit-headers|edit-message|edit-mime|edit-newsgroups|edit-reply-to)>"
syn match muttrcFunction contained "\v<%(edit-subject|edit-to|edit-type|edit-x-comment-to|filter-entry|forget-passphrase|get-attachment|ispell|mix|new-mime)>"
syn match muttrcFunction contained "\v<%(pgp-menu|pipe-entry|postpone-message|print-entry|rename-attachment|rename-file|send-message|smime-menu|toggle-disposition|toggle-recode)>"
syn match muttrcFunction contained "\v<%(toggle-unlink|update-encoding|view-attach|write-fcc)>"

" neomutt editor functions

syn match muttrcFunction contained "\v<%(backspace|backward-char|backward-word|bol|buffy-cycle|capitalize-word|complete|complete-query|delete-char|downcase-word)>"
syn match muttrcFunction contained "\v<%(eol|forward-char|forward-word|history-down|history-up|kill-eol|kill-eow|kill-line|kill-word|quote-char)>"
syn match muttrcFunction contained "\v<%(transpose-chars|upcase-word)>"

" neomutt generic functions

syn match muttrcFunction contained "\v<%(bottom-page|current-bottom|current-middle|current-top|end-cond|enter-command|exit|first-entry|half-down|half-up)>"
syn match muttrcFunction contained "\v<%(help|jump|last-entry|middle-page|next-entry|next-line|next-page|previous-entry|previous-line|previous-page)>"
syn match muttrcFunction contained "\v<%(refresh|search|search-next|search-opposite|search-reverse|select-entry|shell-escape|tag-entry|tag-prefix|tag-prefix-cond)>"
syn match muttrcFunction contained "\v<%(top-page|what-key)>"

" neomutt main functions

syn match muttrcFunction contained "\v<%(bounce-message|break-thread|buffy-list|catchup|change-folder|change-folder-readonly|change-newsgroup|change-newsgroup-readonly|change-vfolder|check-traditional-pgp)>"
syn match muttrcFunction contained "\v<%(clear-flag|collapse-all|collapse-thread|compose-to-sender|copy-message|create-alias|decode-copy|decode-save|decrypt-copy|decrypt-save)>"
syn match muttrcFunction contained "\v<%(delete-message|delete-pattern|delete-subthread|delete-thread|display-address|display-message|display-toggle-weed|edit|edit-label|edit-type)>"
syn match muttrcFunction contained "\v<%(entire-thread|extract-keys|fetch-mail|flag-message|followup-message|forget-passphrase|forward-message|forward-to-group|get-children|get-message)>"
syn match muttrcFunction contained "\v<%(get-parent|group-reply|imap-fetch-mail|imap-logout-all|limit|limit-current-thread|link-threads|list-reply|mail|mail-key)>"
syn match muttrcFunction contained "\v<%(mark-message|modify-labels|modify-labels-then-hide|next-new|next-new-then-unread|next-subthread|next-thread|next-undeleted|next-unread|next-unread-mailbox)>"
syn match muttrcFunction contained "\v<%(parent-message|pipe-message|post-message|previous-new|previous-new-then-unread|previous-subthread|previous-thread|previous-undeleted|previous-unread|print-message)>"
syn match muttrcFunction contained "\v<%(purge-message|purge-thread|quasi-delete|query|quit|read-subthread|read-thread|recall-message|reconstruct-thread|reply)>"
syn match muttrcFunction contained "\v<%(resend-message|root-message|save-message|set-flag|show-limit|show-version|sidebar-next|sidebar-next-new|sidebar-open|sidebar-page-down)>"
syn match muttrcFunction contained "\v<%(sidebar-page-up|sidebar-prev|sidebar-prev-new|sidebar-toggle-virtual|sidebar-toggle-visible|sort-mailbox|sort-reverse|sync-mailbox|tag-pattern|tag-subthread)>"
syn match muttrcFunction contained "\v<%(tag-thread|toggle-new|toggle-read|toggle-write|undelete-message|undelete-pattern|undelete-subthread|undelete-thread|untag-pattern|vfolder-from-query)>"
syn match muttrcFunction contained "\v<%(vfolder-window-backward|vfolder-window-forward|view-attachments)>"

" neomutt mix functions

syn match muttrcFunction contained "\v<%(accept|append|chain-next|chain-prev|delete|insert)>"

" neomutt noop functions

syn match muttrcFunction contained "\v<noop>"

" neomutt pager functions

syn match muttrcFunction contained "\v<%(bottom|bounce-message|break-thread|buffy-list|change-folder|change-folder-readonly|change-newsgroup|change-newsgroup-readonly|change-vfolder|check-traditional-pgp)>"
syn match muttrcFunction contained "\v<%(clear-flag|compose-to-sender|copy-message|create-alias|decode-copy|decode-save|decrypt-copy|decrypt-save|delete-message|delete-subthread)>"
syn match muttrcFunction contained "\v<%(delete-thread|display-address|display-toggle-weed|edit|edit-label|edit-type|enter-command|entire-thread|exit|extract-keys)>"
syn match muttrcFunction contained "\v<%(flag-message|followup-message|forget-passphrase|forward-message|forward-to-group|group-reply|half-down|half-up|help|imap-fetch-mail)>"
syn match muttrcFunction contained "\v<%(imap-logout-all|jump|link-threads|list-reply|mail|mail-key|mark-as-new|modify-labels|modify-labels-then-hide|next-entry)>"
syn match muttrcFunction contained "\v<%(next-line|next-new|next-new-then-unread|next-page|next-subthread|next-thread|next-undeleted|next-unread|next-unread-mailbox|parent-message)>"
syn match muttrcFunction contained "\v<%(pipe-message|post-message|previous-entry|previous-line|previous-new|previous-new-then-unread|previous-page|previous-subthread|previous-thread|previous-undeleted)>"
syn match muttrcFunction contained "\v<%(previous-unread|print-message|purge-message|purge-thread|quasi-delete|quit|read-subthread|read-thread|recall-message|reconstruct-thread)>"
syn match muttrcFunction contained "\v<%(redraw-screen|reply|resend-message|root-message|save-message|search|search-next|search-opposite|search-reverse|search-toggle)>"
syn match muttrcFunction contained "\v<%(set-flag|shell-escape|show-version|sidebar-next|sidebar-next-new|sidebar-open|sidebar-page-down|sidebar-page-up|sidebar-prev|sidebar-prev-new)>"
syn match muttrcFunction contained "\v<%(sidebar-toggle-virtual|sidebar-toggle-visible|skip-quoted|sort-mailbox|sort-reverse|sync-mailbox|tag-message|toggle-quoted|top|undelete-message)>"
syn match muttrcFunction contained "\v<%(undelete-subthread|undelete-thread|vfolder-from-query|view-attachments|what-key)>"

" neomutt pgp functions

syn match muttrcFunction contained "\v<%(verify-key|view-name)>"

" neomutt post functions

syn match muttrcFunction contained "\v<%(delete-entry|undelete-entry)>"

" neomutt query functions

syn match muttrcFunction contained "\v<%(create-alias|mail|query|query-append)>"

" neomutt smime functions

syn match muttrcFunction contained "\v<%(verify-key|view-name)>"

" neomutt commands

syn keyword muttrcCommand skipwhite
	\ alias alternates alternative_order attachments auto_view bind color
	\ exec finish group hdr_order ifdef ifndef ignore lists lua lua-source
	\ macro mailboxes mailto_allow mime_lookup mono my_hdr nospam push reset
	\ score set setenv sidebar_whitelist source spam subjectrx subscribe
	\ tag-formats tag-transforms toggle unalias unalternates
	\ unalternative_order unattachments unauto_view uncolor ungroup
	\ unhdr_order unignore unlists unmailboxes unmailto_allow unmime_lookup
	\ unmono unmy_hdr unscore unset unsetenv unsidebar_whitelist unsubjectrx
	\ unsubscribe unvirtual-mailboxes virtual-mailboxes

" neomutt hooks

syn keyword muttrcHooks contained skipwhite
	\ account-hook charset-hook iconv-hook message-hook folder-hook
	\ mbox-hook save-hook fcc-hook fcc-save-hook send-hook send2-hook
	\ reply-hook crypt-hook

syn keyword muttrcCommand skipwhite unhook nextgroup=muttrcHooks

syn keyword muttrcCommand skipwhite
	\ shutdown-hook startup-hook timeout-hook
	\ nextgroup=muttrcHooks

syn match muttrcPatHooks skipwhite
	\ /\v<%(message-hook|reply-hook|send-hook|send2-hook)>/
	\ nextgroup=muttrcPatHookNot,muttrcOptPattern

syn match muttrcPatHooks skipwhite
	\ /\v<%(fcc-hook|fcc-save-hook|save-hook)>/
	\ nextgroup=muttrcPatHookNot,muttrcOptPattern

syn match muttrcPatHooks skipwhite
	\ /\v<%(append-hook|close-hook|open-hook)>/
	\ nextgroup=muttrcPattern,muttrcOptPattern

syn match muttrcRXHooks skipwhite
	\ /\v<%(account-hook|crypt-hook|folder-hook|mbox-hook)>/
	\ nextgroup=muttrcRXHookNot,muttrcRXHookString,muttrcRXHookStringNL

syn keyword muttrcHooks contained skipwhite charset-hook iconv-hook

" neomutt colours

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(attachment|attach_headers|body|bold|error|hdrdefault|header|index|index_author|index_collapsed)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(index_date|index_flags|index_label|index_number|index_size|index_subject|index_tag|index_tags|indicator|markers)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(message|normal|progress|prompt|quoted|search|sidebar_divider|sidebar_flagged|sidebar_highlight|sidebar_indicator)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(sidebar_new|sidebar_ordinary|sidebar_spoolfile|signature|status|tilde|tree|underline)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

" neomutt compose colours

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(header|security_both|security_encrypt|security_none|security_sign)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

" neomutt colours

syn match muttrcColorField contained "\<quoted\d\=\>"

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

hi def link muttrcAction                   Macro
hi def link muttrcAddrDef                  muttrcGroupFlag
hi def link muttrcAliasEncEmail            Identifier
hi def link muttrcAliasEncEmailNL          SpecialChar
hi def link muttrcAliasENNL                SpecialChar
hi def link muttrcAliasFormatEscapes       muttrcEscape
hi def link muttrcAliasFormatStr           muttrcString
hi def link muttrcAliasGroupDefNL          SpecialChar
hi def link muttrcAliasGroupName           Macro
hi def link muttrcAliasKey                 Identifier
hi def link muttrcAliasNameNL              SpecialChar
hi def link muttrcAliasNL                  SpecialChar
hi def link muttrcAliasParens              Type
hi def link muttrcAlternateKeyword         muttrcCommand
hi def link muttrcAlternatesLine           Error
hi def link muttrcAttachFormatConditionals muttrcFormatConditionals2
hi def link muttrcAttachFormatEscapes      muttrcEscape
hi def link muttrcAttachFormatStr          muttrcString
hi def link muttrcAttachmentsFlag          Type
hi def link muttrcAttachmentsLine          muttrcCommand
hi def link muttrcAttachmentsMimeType      String
hi def link muttrcBadAction                Error
hi def link muttrcBindFunction             Error
hi def link muttrcBindFunctionNL           SpecialChar
hi def link muttrcBindKeyNL                SpecialChar
hi def link muttrcBindMenuList             Error
hi def link muttrcBindMenuListNL           SpecialChar
hi def link muttrcColor                    Type
hi def link muttrcColorBG                  Error
hi def link muttrcColorBGH                 Error
hi def link muttrcColorBGI                 Error
hi def link muttrcColorBGNL                SpecialChar
hi def link muttrcColorContext             Error
hi def link muttrcColorContextH            Identifier
hi def link muttrcColorContextI            Identifier
hi def link muttrcColorFG                  Error
hi def link muttrcColorFGH                 Error
hi def link muttrcColorFGI                 Error
hi def link muttrcColorFGNL                SpecialChar
hi def link muttrcColorField               Identifier
hi def link muttrcColorKeyword             muttrcCommand
hi def link muttrcColorKeywordH            muttrcColorKeyword
hi def link muttrcColorKeywordI            muttrcColorKeyword
hi def link muttrcColorLine                Error
hi def link muttrcColorMatchCountNL        SpecialChar
hi def link muttrcColorNL                  SpecialChar
hi def link muttrcColorRXNL                SpecialChar
hi def link muttrcCommand                  Keyword
hi def link muttrcComment                  Comment
hi def link muttrcComposeFormatEscapes     muttrcEscape
hi def link muttrcComposeFormatStr         muttrcString
hi def link muttrcEmail                    Special
hi def link muttrcEscape                   SpecialChar
hi def link muttrcEscapedVariable          String
hi def link muttrcFolderFormatConditionals muttrcFormatConditionals2
hi def link muttrcFolderFormatEscapes      muttrcEscape
hi def link muttrcFolderFormatStr          muttrcString
hi def link muttrcFormatConditionals2      Type
hi def link muttrcFormatErrors             Error
hi def link muttrcFunction                 Macro
hi def link muttrcGroupDef                 Macro
hi def link muttrcGroupFlag                Type
hi def link muttrcGroupKeyword             muttrcCommand
hi def link muttrcGroupLine                Error
hi def link muttrcHeader                   Type
hi def link muttrcHooks                    Type
hi def link muttrcIndexFormatConditionals  muttrcFormatConditionals2
hi def link muttrcIndexFormatEscapes       muttrcEscape
hi def link muttrcIndexFormatStr           muttrcString
hi def link muttrcKey                      Type
hi def link muttrcKeyName                  SpecialChar
hi def link muttrcKeySpecial               SpecialChar
hi def link muttrcListsKeyword             muttrcCommand
hi def link muttrcListsLine                Error
hi def link muttrcMacroBodyNL              SpecialChar
hi def link muttrcMacroDescr               String
hi def link muttrcMacroDescrNL             SpecialChar
hi def link muttrcMacroKeyNL               SpecialChar
hi def link muttrcMacroMenuListNL          SpecialChar
hi def link muttrcMenu                     Identifier
hi def link muttrcMixFormatConditionals    muttrcFormatConditionals2
hi def link muttrcMixFormatEscapes         muttrcEscape
hi def link muttrcMixFormatStr             muttrcString
hi def link muttrcMono                     muttrcCommand
hi def link muttrcMonoAttrib               muttrcColor
hi def link muttrcPatHookNot               Type
hi def link muttrcPatHooks                 muttrcCommand
hi def link muttrcPattern                  Error
hi def link muttrcPatternNL                SpecialChar
hi def link muttrcPGPCmdFormatConditionals muttrcFormatConditionals2
hi def link muttrcPGPCmdFormatEscapes      muttrcEscape
hi def link muttrcPGPCmdFormatStr          muttrcString
hi def link muttrcPGPFormatConditionals    muttrcFormatConditionals2
hi def link muttrcPGPFormatEscapes         muttrcEscape
hi def link muttrcPGPFormatStr             muttrcString
hi def link muttrcPGPGetKeysFormatEscapes  muttrcEscape
hi def link muttrcPGPGetKeysFormatStr      muttrcString
hi def link muttrcPGPTimeEscapes           muttrcEscape
hi def link muttrcRXChars                  SpecialChar
hi def link muttrcRXDef                    muttrcGroupFlag
hi def link muttrcRXHookNot                Type
hi def link muttrcRXHooks                  muttrcCommand
hi def link muttrcRXPat                    String
hi def link muttrcRXString                 String
hi def link muttrcRXString2                String
hi def link muttrcSetBoolAssignment        Boolean
hi def link muttrcSetNumAssignment         Number
hi def link muttrcSetQuadAssignment        Boolean
hi def link muttrcSetStrAssignment         String
hi def link muttrcShellString              muttrcEscape
hi def link muttrcSimplePat                Identifier
hi def link muttrcSimplePatMetas           Special
hi def link muttrcSimplePatString          Macro
hi def link muttrcSmimeFormatConditionals  muttrcFormatConditionals2
hi def link muttrcSmimeFormatEscapes       muttrcEscape
hi def link muttrcSmimeFormatStr           muttrcString
hi def link muttrcSpecial                  Special
hi def link muttrcStatusFormatConditionals muttrcFormatConditionals2
hi def link muttrcStatusFormatEscapes      muttrcEscape
hi def link muttrcStatusFormatStr          muttrcString
hi def link muttrcStrftimeEscapes          Type
hi def link muttrcStrftimeFormatStr        muttrcString
hi def link muttrcString                   String
hi def link muttrcStringNL                 SpecialChar
hi def link muttrcSubscribeKeyword         muttrcCommand
hi def link muttrcSubscribeLine            Error
hi def link muttrcTimeEscapes              muttrcEscape
hi def link muttrcUnAliasKey               Identifier
hi def link muttrcUnAliasNL                SpecialChar
hi def link muttrcUnColorAPNL              SpecialChar
hi def link muttrcUnColorIndex             Identifier
hi def link muttrcUnColorIndexNL           SpecialChar
hi def link muttrcUnColorKeyword           muttrcCommand
hi def link muttrcUnColorLine              Error
hi def link muttrcUnColorPatNL             SpecialChar
hi def link muttrcVarBool                  Identifier
hi def link muttrcVariableInner            Special
hi def link muttrcVarNum                   Identifier
hi def link muttrcVarQuad                  Identifier
hi def link muttrcVarStr                   Identifier

let b:current_syntax = "neomuttrc"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=8 noet tw=100 sw=8 sts=0 ft=vim

