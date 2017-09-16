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

" vim: syn=vim ts=8 sw=8 noet tw=0
