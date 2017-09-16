" neomutt editor functions

syn match muttrcFunction contained "\v<%(backspace|backward-char|backward-word|bol|buffy-cycle|capitalize-word|complete|complete-query|delete-char|downcase-word)>"
syn match muttrcFunction contained "\v<%(eol|forward-char|forward-word|history-down|history-up|kill-eol|kill-eow|kill-line|kill-word|quote-char)>"
syn match muttrcFunction contained "\v<%(transpose-chars|upcase-word)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
