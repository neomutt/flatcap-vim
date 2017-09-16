" neomutt compose functions

syn match muttrcFunction contained "\v<%(attach-file|attach-key|attach-message|attach-news-message|copy-file|detach-file|display-toggle-weed|edit-bcc|edit-cc|edit-description)>"
syn match muttrcFunction contained "\v<%(edit-encoding|edit-fcc|edit-file|edit-followup-to|edit-from|edit-headers|edit-message|edit-mime|edit-newsgroups|edit-reply-to)>"
syn match muttrcFunction contained "\v<%(edit-subject|edit-to|edit-type|edit-x-comment-to|filter-entry|forget-passphrase|get-attachment|ispell|mix|new-mime)>"
syn match muttrcFunction contained "\v<%(pgp-menu|pipe-entry|postpone-message|print-entry|rename-attachment|rename-file|send-message|smime-menu|toggle-disposition|toggle-recode)>"
syn match muttrcFunction contained "\v<%(toggle-unlink|update-encoding|view-attach|write-fcc)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
