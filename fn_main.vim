" neomutt main functions

syn match muttrcFunction contained "\v<%(bounce-message|break-thread|buffy-list|catchup|change-folder|change-folder-readonly|change-newsgroup|change-newsgroup-readonly|change-vfolder|check-traditional-pgp)>"
syn match muttrcFunction contained "\v<%(clear-flag|collapse-all|collapse-thread|compose-to-sender|copy-message|create-alias|decode-copy|decode-save|decrypt-copy|decrypt-save)>"
syn match muttrcFunction contained "\v<%(delete-message|delete-pattern|delete-subthread|delete-thread|display-address|display-message|display-toggle-weed|edit|edit-label|edit-type)>"
syn match muttrcFunction contained "\v<%(entire-thread|extract-keys|fetch-mail|flag-message|followup-message|forget-passphrase|forward-message|forward-to-group|get-children|get-message)>"
syn match muttrcFunction contained "\v<%(get-parent|group-reply|imap-fetch-mail|imap-logout-all|limit|limit-current-thread|link-threads|list-reply|mail|mail-key)>"
syn match muttrcFunction contained "\v<%(mark-message|modify-labels|modify-labels-then-hide|next-new|next-new-then-unread|next-subthread|next-thread|next-undeleted|next-unread|next-unread-mailbox)>"
syn match muttrcFunction contained "\v<%(parent-message|pipe-message|post-message|previous-new|previous-new-then-unread|previous-subthread|previous-thread|previous-undeleted|previous-unread|print-message)>"
syn match muttrcFunction contained "\v<%(purge-message|purge-thread|quasi-delete|query|quit|read-subthread|read-thread|recall-message|reconstruct-thread|reply)>"
syn match muttrcFunction contained "\v<%(resend-message|root-message|save-message|set-flag|show-limit|show-version|sidebar-next|sidebar-next-new|sidebar-open|sidebar-page-down)>"
syn match muttrcFunction contained "\v<%(sidebar-page-up|sidebar-prev|sidebar-prev-new|sidebar-toggle-virtual|sidebar-toggle-visible|sort-mailbox|sort-reverse|sync-mailbox|tag-pattern|tag-subthread)>"
syn match muttrcFunction contained "\v<%(tag-thread|toggle-new|toggle-read|toggle-write|undelete-message|undelete-pattern|undelete-subthread|undelete-thread|untag-pattern|vfolder-from-query)>"
syn match muttrcFunction contained "\v<%(vfolder-window-backward|vfolder-window-forward|view-attachments)>"

" vim: syn=vim ts=8 sw=8 noet tw=0
