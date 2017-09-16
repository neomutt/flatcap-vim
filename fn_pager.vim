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

" vim: syn=vim ts=8 sw=8 noet tw=0

