" neomutt compose colours

syn region muttrcColorLine keepend
	\ start=/\v\s*color\s+%(header|security_both|security_encrypt|security_none|security_sign)/
	\ skip=+\\$+
	\ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace

" vim: syn=vim ts=8 sw=8 noet tw=0
