" neomutt browser functions

syn match muttrcFunction contained "\v<%(buffy-list|catchup|change-dir|check-new|create-mailbox|delete-mailbox|display-filename|enter-mask|goto-folder|reload-active)>"
syn match muttrcFunction contained "\v<%(rename-mailbox|select-new|sort|sort-reverse|subscribe|subscribe-pattern|toggle-mailboxes|toggle-subscribed|uncatchup|unsubscribe)>"
syn match muttrcFunction contained "\v<%(unsubscribe-pattern|view-file)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
