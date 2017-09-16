" neomutt regex config variables

syn keyword muttrcVarRegex contained skipwhite
	\ attach_keyword gecos_mask mask pgp_decryption_okay pgp_good_sign
	\ quote_regexp reply_regexp smileys

hi def link muttrcVarRegex muttrcVarStr

" vim: syn=vim ts=8 sw=8 noet tw=0
