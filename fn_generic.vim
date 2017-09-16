" neomutt generic functions

syn match muttrcFunction contained "\v<%(bottom-page|current-bottom|current-middle|current-top|end-cond|enter-command|exit|first-entry|half-down|half-up)>"
syn match muttrcFunction contained "\v<%(help|jump|last-entry|middle-page|next-entry|next-line|next-page|previous-entry|previous-line|previous-page)>"
syn match muttrcFunction contained "\v<%(refresh|search|search-next|search-opposite|search-reverse|select-entry|shell-escape|tag-entry|tag-prefix|tag-prefix-cond)>"
syn match muttrcFunction contained "\v<%(top-page|what-key)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
