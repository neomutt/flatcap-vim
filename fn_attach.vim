" neomutt attach functions

syn match muttrcFunction contained "\v<%(bounce-message|check-traditional-pgp|collapse-parts|delete-entry|display-toggle-weed|edit-type|extract-keys|followup-message|forget-passphrase|forward-message)>"
syn match muttrcFunction contained "\v<%(forward-to-group|group-reply|list-reply|pipe-entry|print-entry|reply|resend-message|save-entry|undelete-entry|view-attach)>"
syn match muttrcFunction contained "\v<%(view-mailcap|view-text)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
