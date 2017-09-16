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

" vim: syn=vim ts=8 sw=8 noet tw=0
