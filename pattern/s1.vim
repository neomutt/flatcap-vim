syn match muttrcComment		"^# .*$" contains=@Spell
syn match muttrcComment		"^#[^ ].*$"
syn match muttrcComment		"^#$"
syn match muttrcComment		"[^\\]#.*$"lc=1

" Escape sequences (back-tick and pipe goes here too)
syn match muttrcEscape		+\\[#tnr"'Cc ]+
syn match muttrcEscape		+[`|]+
syn match muttrcEscape		+\\$+

" The variables takes the following arguments
"syn match  muttrcString		contained "=\s*[^ #"'`]\+"lc=1 contains=muttrcEscape
syn region muttrcString		contained keepend start=+"+ms=e skip=+\\"+ end=+"+ contains=muttrcEscape,muttrcCommand,muttrcAction,muttrcShellString
syn region muttrcString		contained keepend start=+'+ms=e skip=+\\'+ end=+'+ contains=muttrcEscape,muttrcCommand,muttrcAction
syn match muttrcStringNL	contained skipwhite skipnl "\s*\\$" nextgroup=muttrcString,muttrcStringNL

syn region muttrcShellString	matchgroup=muttrcEscape keepend start=+`+ skip=+\\`+ end=+`+ contains=muttrcVarStr,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcCommand

syn match  muttrcRXChars	contained /[^\\][][.*?+]\+/hs=s+1
syn match  muttrcRXChars	contained /[][|()][.*?+]*/
syn match  muttrcRXChars	contained /['"]^/ms=s+1
syn match  muttrcRXChars	contained /$['"]/me=e-1
syn match  muttrcRXChars	contained /\\/
" Why does muttrcRXString2 work with one \ when muttrcRXString requires two?
syn region muttrcRXString	contained skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcRXChars
syn region muttrcRXString	contained skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcRXChars
syn region muttrcRXString	contained skipwhite start=+[^ 	"'^]+ skip=+\\\s+ end=+\s+re=e-1 contains=muttrcRXChars
" For some reason, skip refuses to match backslashes here...
syn region muttrcRXString	contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+[^\\]\s+re=e-1 contains=muttrcRXChars
syn region muttrcRXString	contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+$\s+ contains=muttrcRXChars
syn region muttrcRXString2	contained skipwhite start=+'+ skip=+\'+ end=+'+ contains=muttrcRXChars
syn region muttrcRXString2	contained skipwhite start=+"+ skip=+\"+ end=+"+ contains=muttrcRXChars

" these are exclusively for args lists (e.g. -rx pat pat pat ...)
syn region muttrcRXPat		contained keepend skipwhite start=+'+ skip=+\\'+ end=+'\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syn region muttrcRXPat		contained keepend skipwhite start=+"+ skip=+\\"+ end=+"\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syn match muttrcRXPat		contained /[^-'"#!]\S\+/ skipwhite contains=muttrcRXChars nextgroup=muttrcRXPat
syn match muttrcRXDef 		contained "-rx\s\+" skipwhite nextgroup=muttrcRXPat

syn match muttrcSpecial		+\(['"]\)!\1+

syn match muttrcSetStrAssignment contained skipwhite /=\s*\%(\\\?\$\)\?[0-9A-Za-z_-]\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn region muttrcSetStrAssignment contained skipwhite keepend start=+=\s*"+hs=s+1 end=+"+ skip=+\\"+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syn region muttrcSetStrAssignment contained skipwhite keepend start=+=\s*'+hs=s+1 end=+'+ skip=+\\'+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syn match muttrcSetBoolAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetBoolAssignment contained skipwhite /=\s*\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetBoolAssignment contained skipwhite /=\s*"\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetBoolAssignment contained skipwhite /=\s*'\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetQuadAssignment contained skipwhite /=\s*\%(ask-\)\?\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*"\%(ask-\)\?\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetQuadAssignment contained skipwhite /=\s*'\%(ask-\)\?\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syn match muttrcSetNumAssignment contained skipwhite /=\s*\d\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*"\d\+"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn match muttrcSetNumAssignment contained skipwhite /=\s*'\d\+'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" Now catch some email addresses and headers (purified version from mail.vim)
syn match muttrcEmail		"[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
syn match muttrcHeader		"\<\c\%(From\|To\|C[Cc]\|B[Cc][Cc]\|Reply-To\|Subject\|Return-Path\|Received\|Date\|Replied\|Attach\)\>:\="

syn match   muttrcKeySpecial	contained +\%(\\[Cc'"]\|\^\|\\[01]\d\{2}\)+
syn match   muttrcKey		contained "\S\+"			contains=muttrcKeySpecial,muttrcKeyName
syn region  muttrcKey		contained start=+"+ skip=+\\\\\|\\"+ end=+"+	contains=muttrcKeySpecial,muttrcKeyName
syn region  muttrcKey		contained start=+'+ skip=+\\\\\|\\'+ end=+'+	contains=muttrcKeySpecial,muttrcKeyName
syn match   muttrcKeyName	contained "\<f\%(\d\|10\)\>"
syn match   muttrcKeyName	contained "\\[trne]"
syn match   muttrcKeyName	contained "\c<\%(BackSpace\|BackTab\|Delete\|Down\|End\|Enter\|Esc\|Home\|Insert\|Left\|PageDown\|PageUp\|Return\|Right\|Space\|Tab\|Up\)>"
syn match   muttrcKeyName	contained "<F[0-9]\+>"

syn keyword muttrcVarBool	skipwhite contained
			\ allow_8bit allow_ansi arrow_cursor ascii_chars askbcc askcc attach_split
			\ auto_tag autoedit beep beep_new bounce_delivered braille_friendly
			\ check_mbox_size check_new collapse_unread confirmappend confirmcreate
			\ crypt_autoencrypt crypt_autopgp crypt_autosign crypt_autosmime
			\ crypt_confirmhook crypt_opportunistic_encrypt crypt_replyencrypt
			\ crypt_replysign crypt_replysignencrypted crypt_timestamp crypt_use_gpgme
			\ crypt_use_pka delete_untag digest_collapse duplicate_threads
			\ edit_headers encode_from fast_reply fcc_clear followup_to
			\ force_name forward_decode forward_decrypt
			\ forward_quote hdrs header help hidden_host hide_limited hide_missing
			\ hide_thread_subject hide_top_limited hide_top_missing honor_disposition
			\ idn_decode idn_encode ignore_linear_white_space ignore_list_reply_to
			\ imap_check_subscribed imap_list_subscribed imap_passive imap_peek
			\ imap_servernoise implicit_autoview include_onlyfirst keep_flagged
			\ mail_check_recent mail_check_stats mailcap_sanitize maildir_check_cur
			\ maildir_header_cache_verify maildir_trash mark_old markers menu_move_off
			\ menu_scroll message_cache_clean meta_key metoo mh_purge mime_forward_decode
			\ narrow_tree pager_stop pgp_auto_decode
			\ pgp_autoinline pgp_check_exit
			\ pgp_ignore_subkeys pgp_long_ids pgp_replyinline
			\ pgp_retainable_sigs pgp_show_unusable pgp_strict_enc
			\ pgp_use_gpg_agent pipe_decode pipe_split pop_auth_try_all pop_last
			\ postpone_encrypt postpone_encrypt_as print_decode print_split prompt_after
			\ read_only reflow_space_quotes reflow_text reflow_wrap reply_self resolve
			\ resume_draft_files resume_edited_draft_files reverse_alias reverse_name
			\ reverse_realname rfc2047_parameters save_address save_empty save_name score
			\ sidebar_folder_indent sidebar_new_mail_only sidebar_next_new_wrap
			\ sidebar_short_path sidebar_sort sidebar_visible sig_dashes sig_on_top
			\ smart_wrap smime_ask_cert_label smime_decrypt_use_default_key smime_is_default
			\ sort_re ssl_force_tls ssl_use_sslv2 ssl_use_sslv3 ssl_use_tlsv1
			\ ssl_usesystemcerts ssl_verify_dates ssl_verify_host status_on_top strict_mime
			\ strict_threads suspend text_flowed thorough_search thread_received tilde
			\ ts_enabled uncollapse_jump use_8bitmime use_domain use_envelope_from use_from
			\ use_idn use_ipv6 user_agent wait_key weed wrap_search write_bcc
			\ nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool	skipwhite contained
			\ noallow_8bit noallow_ansi noarrow_cursor noascii_chars noaskbcc noaskcc noattach_split
			\ noauto_tag noautoedit nobeep nobeep_new nobounce_delivered nobraille_friendly
			\ nocheck_mbox_size nocheck_new nocollapse_unread noconfirmappend noconfirmcreate
			\ nocrypt_autoencrypt nocrypt_autopgp nocrypt_autosign nocrypt_autosmime
			\ nocrypt_confirmhook nocrypt_opportunistic_encrypt nocrypt_replyencrypt
			\ nocrypt_replysign nocrypt_replysignencrypted nocrypt_timestamp nocrypt_use_gpgme
			\ nocrypt_use_pka nodelete_untag nodigest_collapse noduplicate_threads noedit_hdrs
			\ noedit_headers noencode_from noenvelope_from nofast_reply nofcc_clear nofollowup_to
			\ noforce_name noforw_decode noforw_decrypt noforw_quote noforward_decode noforward_decrypt
			\ noforward_quote nohdrs noheader nohelp nohidden_host nohide_limited nohide_missing
			\ nohide_thread_subject nohide_top_limited nohide_top_missing nohonor_disposition
			\ noidn_decode noidn_encode noignore_linear_white_space noignore_list_reply_to
			\ noimap_check_subscribed noimap_list_subscribed noimap_passive noimap_peek
			\ noimap_servernoise noimplicit_autoview noinclude_onlyfirst nokeep_flagged
			\ nomail_check_recent nomail_check_stats nomailcap_sanitize nomaildir_check_cur
			\ nomaildir_header_cache_verify nomaildir_trash nomark_old nomarkers nomenu_move_off
			\ nomenu_scroll nomessage_cache_clean nometa_key nometoo nomh_purge nomime_forward_decode
			\ nonarrow_tree nopager_stop nopgp_auto_decode nopgp_auto_traditional nopgp_autoencrypt
			\ nopgp_autoinline nopgp_autosign nopgp_check_exit nopgp_create_traditional
			\ nopgp_ignore_subkeys nopgp_long_ids nopgp_replyencrypt nopgp_replyinline nopgp_replysign
			\ nopgp_replysignencrypted nopgp_retainable_sigs nopgp_show_unusable nopgp_strict_enc
			\ nopgp_use_gpg_agent nopipe_decode nopipe_split nopop_auth_try_all nopop_last
			\ nopostpone_encrypt nopostpone_encrypt_as noprint_decode noprint_split noprompt_after
			\ noread_only noreflow_space_quotes noreflow_text noreflow_wrap noreply_self noresolve
			\ noresume_draft_files noresume_edited_draft_files noreverse_alias noreverse_name
			\ noreverse_realname norfc2047_parameters nosave_address nosave_empty nosave_name noscore
			\ nosidebar_folder_indent nosidebar_new_mail_only nosidebar_next_new_wrap
			\ nosidebar_short_path nosidebar_sort nosidebar_visible nosig_dashes nosig_on_top
			\ nosmart_wrap nosmime_ask_cert_label nosmime_decrypt_use_default_key nosmime_is_default
			\ nosort_re nossl_force_tls nossl_use_sslv2 nossl_use_sslv3 nossl_use_tlsv1
			\ nossl_usesystemcerts nossl_verify_dates nossl_verify_host nostatus_on_top nostrict_mime
			\ nostrict_threads nosuspend notext_flowed nothorough_search nothread_received notilde
			\ nots_enabled nouncollapse_jump nouse_8bitmime nouse_domain nouse_envelope_from nouse_from
			\ nouse_idn nouse_ipv6 nouser_agent nowait_key noweed nowrap_search nowrite_bcc
			\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool	skipwhite contained
			\ invallow_8bit invallow_ansi invarrow_cursor invascii_chars invaskbcc invaskcc invattach_split
			\ invauto_tag invautoedit invbeep invbeep_new invbounce_delivered invbraille_friendly
			\ invcheck_mbox_size invcheck_new invcollapse_unread invconfirmappend invconfirmcreate
			\ invcrypt_autoencrypt invcrypt_autopgp invcrypt_autosign invcrypt_autosmime
			\ invcrypt_confirmhook invcrypt_opportunistic_encrypt invcrypt_replyencrypt
			\ invcrypt_replysign invcrypt_replysignencrypted invcrypt_timestamp invcrypt_use_gpgme
			\ invcrypt_use_pka invdelete_untag invdigest_collapse invduplicate_threads invedit_hdrs
			\ invedit_headers invencode_from invenvelope_from invfast_reply invfcc_clear invfollowup_to
			\ invforce_name invforw_decode invforw_decrypt invforw_quote invforward_decode invforward_decrypt
			\ invforward_quote invhdrs invheader invhelp invhidden_host invhide_limited invhide_missing
			\ invhide_thread_subject invhide_top_limited invhide_top_missing invhonor_disposition
			\ invidn_decode invidn_encode invignore_linear_white_space invignore_list_reply_to
			\ invimap_check_subscribed invimap_list_subscribed invimap_passive invimap_peek
			\ invimap_servernoise invimplicit_autoview invinclude_onlyfirst invkeep_flagged
			\ invmail_check_recent invmail_check_stats invmailcap_sanitize invmaildir_check_cur
			\ invmaildir_header_cache_verify invmaildir_trash invmark_old invmarkers invmenu_move_off
			\ invmenu_scroll invmessage_cache_clean invmeta_key invmetoo invmh_purge invmime_forward_decode
			\ invnarrow_tree invpager_stop invpgp_auto_decode invpgp_auto_traditional invpgp_autoencrypt
			\ invpgp_autoinline invpgp_autosign invpgp_check_exit invpgp_create_traditional
			\ invpgp_ignore_subkeys invpgp_long_ids invpgp_replyencrypt invpgp_replyinline invpgp_replysign
			\ invpgp_replysignencrypted invpgp_retainable_sigs invpgp_show_unusable invpgp_strict_enc
			\ invpgp_use_gpg_agent invpipe_decode invpipe_split invpop_auth_try_all invpop_last
			\ invpostpone_encrypt invpostpone_encrypt_as invprint_decode invprint_split invprompt_after
			\ invread_only invreflow_space_quotes invreflow_text invreflow_wrap invreply_self invresolve
			\ invresume_draft_files invresume_edited_draft_files invreverse_alias invreverse_name
			\ invreverse_realname invrfc2047_parameters invsave_address invsave_empty invsave_name invscore
			\ invsidebar_folder_indent invsidebar_new_mail_only invsidebar_next_new_wrap
			\ invsidebar_short_path invsidebar_sort invsidebar_visible invsig_dashes invsig_on_top
			\ invsmart_wrap invsmime_ask_cert_label invsmime_decrypt_use_default_key invsmime_is_default
			\ invsort_re invssl_force_tls invssl_use_sslv2 invssl_use_sslv3 invssl_use_tlsv1
			\ invssl_usesystemcerts invssl_verify_dates invssl_verify_host invstatus_on_top invstrict_mime
			\ invstrict_threads invsuspend invtext_flowed invthorough_search invthread_received invtilde
			\ invts_enabled invuncollapse_jump invuse_8bitmime invuse_domain invuse_envelope_from invuse_from
			\ invuse_idn invuse_ipv6 invuser_agent invwait_key invweed invwrap_search invwrite_bcc
			\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad	skipwhite contained
			\ abort_nosubject abort_unmodified bounce copy crypt_verify_sig delete
			\ fcc_attach forward_edit honor_followup_to include mime_forward
			\ mime_forward_rest move pgp_mime_auto pop_delete
			\ pop_reconnect postpone print quit recall reply_to ssl_starttls
			\ nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad	skipwhite contained
			\ noabort_nosubject noabort_unmodified nobounce nocopy nocrypt_verify_sig nodelete
			\ nofcc_attach noforward_edit nohonor_followup_to noinclude nomime_forward
			\ nomime_forward_rest nomime_fwd nomove nopgp_mime_auto nopgp_verify_sig nopop_delete
			\ nopop_reconnect nopostpone noprint noquit norecall noreply_to nossl_starttls
			\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad	skipwhite contained
			\ invabort_nosubject invabort_unmodified invbounce invcopy invcrypt_verify_sig invdelete
			\ invfcc_attach invforward_edit invhonor_followup_to invinclude invmime_forward
			\ invmime_forward_rest invmime_fwd invmove invpgp_mime_auto invpgp_verify_sig invpop_delete
			\ invpop_reconnect invpostpone invprint invquit invrecall invreply_to invssl_starttls
			\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarNum	skipwhite contained
			\ connect_timeout history imap_keepalive imap_pipeline_depth mail_check
			\ mail_check_stats_interval menu_context net_inc pager_context pager_index_lines
			\ pgp_timeout pop_checkinterval read_inc save_history score_threshold_delete
			\ score_threshold_flag score_threshold_read search_context sendmail_wait
			\ sidebar_width sleep_time smime_timeout ssl_min_dh_prime_bits time_inc timeout
			\ wrap wrap_headers wrapmargin write_inc
			\ nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn match muttrcFormatErrors contained /%./

syn match muttrcStrftimeEscapes contained /%[AaBbCcDdeFGgHhIjklMmnpRrSsTtUuVvWwXxYyZz+%]/
syn match muttrcStrftimeEscapes contained /%E[cCxXyY]/
syn match muttrcStrftimeEscapes contained /%O[BdeHImMSuUVwWy]/

syn region muttrcIndexFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcIndexFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcQueryFormatStr contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcQueryFormatEscapes,muttrcQueryFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAliasFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAliasFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAttachFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcAttachFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcComposeFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcComposeFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcFolderFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcFolderFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcMixFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcMixFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPCmdFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPCmdFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStatusFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStatusFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPGetKeysFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcPGPGetKeysFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcSmimeFormatStr	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcSmimeFormatStr	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStrftimeFormatStr contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn region muttrcStrftimeFormatStr contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" The following info was pulled from hdr_format_str in hdrline.c
syn match muttrcIndexFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[aAbBcCdDeEfFHilLmMnNOPsStTuvXyYZ%]/
syn match muttrcIndexFormatEscapes contained /%[>|*]./
syn match muttrcIndexFormatConditionals contained /%?[EFHlLMNOXyY]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from alias_format_str in addrbook.c
syn match muttrcAliasFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[afnrt%]/
" The following info was pulled from query_format_str in query.c
syn match muttrcQueryFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[acent%]/
syn match muttrcQueryFormatConditionals contained /%?[e]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from mutt_attach_fmt in recvattach.c
syn match muttrcAttachFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CcDdefImMnQstTuX%]/
syn match muttrcAttachFormatEscapes contained /%[>|*]./
syn match muttrcAttachFormatConditionals contained /%?[CcdDefInmMQstTuX]?/ nextgroup=muttrcFormatConditionals2
syn match muttrcFormatConditionals2 contained /[^?]*?/
" The following info was pulled from compose_format_str in compose.c
syn match muttrcComposeFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ahlv%]/
syn match muttrcComposeFormatEscapes contained /%[>|*]./
" The following info was pulled from folder_format_str in browser.c
syn match muttrcFolderFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CDdfFglNstu%]/
syn match muttrcFolderFormatEscapes contained /%[>|*]./
syn match muttrcFolderFormatConditionals contained /%?[N]?/
" The following info was pulled from mix_entry_fmt in remailer.c
syn match muttrcMixFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ncsa%]/
syn match muttrcMixFormatConditionals contained /%?[ncsa]?/
" The following info was pulled from crypt_entry_fmt in crypt_gpgme.c
" and pgp_entry_fmt in pgpkey.c (note that crypt_entry_fmt supports
" 'p', but pgp_entry_fmt does not).
syn match muttrcPGPFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[nkualfctp%]/
syn match muttrcPGPFormatConditionals contained /%?[nkualfct]?/
" The following info was pulled from _mutt_fmt_pgp_command in
" pgpinvoke.c
syn match muttrcPGPCmdFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[pfsar%]/
syn match muttrcPGPCmdFormatConditionals contained /%?[pfsar]?/ nextgroup=muttrcFormatConditionals2
" The following info was pulled from status_format_str in status.c
syn match muttrcStatusFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[bdfFhlLmMnopPrsStuvV%]/
syn match muttrcStatusFormatEscapes contained /%[>|*]./
syn match muttrcStatusFormatConditionals contained /%?[bdFlLmMnoptuV]?/ nextgroup=muttrcFormatConditionals2
" This matches the documentation, but directly contradicts the code
" (according to the code, this should be identical to the
" muttrcPGPCmdFormatEscapes
syn match muttrcPGPGetKeysFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[r%]/
" The following info was pulled from _mutt_fmt_smime_command in
" smime.c
syn match muttrcSmimeFormatEscapes contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[Cciskaf%]/
syn match muttrcSmimeFormatConditionals contained /%?[Cciskaf]?/ nextgroup=muttrcFormatConditionals2

syn region muttrcTimeEscapes contained start=+%{+ end=+}+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%(+ end=+)+ contains=muttrcStrftimeEscapes
syn region muttrcTimeEscapes contained start=+%<+ end=+>+ contains=muttrcStrftimeEscapes
syn region muttrcPGPTimeEscapes contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes

syn keyword muttrcVarStr	contained skipwhite attribution index_format message_format pager_format nextgroup=muttrcVarEqualsIdxFmt
syn match muttrcVarEqualsIdxFmt contained skipwhite "=" nextgroup=muttrcIndexFormatStr
syn keyword muttrcVarStr	contained skipwhite alias_format nextgroup=muttrcVarEqualsAliasFmt
syn match muttrcVarEqualsAliasFmt contained skipwhite "=" nextgroup=muttrcAliasFormatStr
syn keyword muttrcVarStr	contained skipwhite attach_format nextgroup=muttrcVarEqualsAttachFmt
syn match muttrcVarEqualsAttachFmt contained skipwhite "=" nextgroup=muttrcAttachFormatStr
syn keyword muttrcVarStr	contained skipwhite compose_format nextgroup=muttrcVarEqualsComposeFmt
syn match muttrcVarEqualsComposeFmt contained skipwhite "=" nextgroup=muttrcComposeFormatStr
syn keyword muttrcVarStr	contained skipwhite folder_format nextgroup=muttrcVarEqualsFolderFmt
syn match muttrcVarEqualsFolderFmt contained skipwhite "=" nextgroup=muttrcFolderFormatStr
syn keyword muttrcVarStr	contained skipwhite mix_entry_format nextgroup=muttrcVarEqualsMixFmt
syn match muttrcVarEqualsMixFmt contained skipwhite "=" nextgroup=muttrcMixFormatStr
syn keyword muttrcVarStr	contained skipwhite pgp_entry_format nextgroup=muttrcVarEqualsPGPFmt
syn match muttrcVarEqualsPGPFmt contained skipwhite "=" nextgroup=muttrcPGPFormatStr
syn keyword muttrcVarStr	contained skipwhite query_format nextgroup=muttrcVarEqualsQueryFmt
syn match muttrcVarEqualsQueryFmt contained skipwhite "=" nextgroup=muttrcQueryFormatStr
syn keyword muttrcVarStr	contained skipwhite pgp_decode_command pgp_verify_command pgp_decrypt_command pgp_clearsign_command pgp_sign_command pgp_encrypt_sign_command pgp_encrypt_only_command pgp_import_command pgp_export_command pgp_verify_key_command pgp_list_secring_command pgp_list_pubring_command nextgroup=muttrcVarEqualsPGPCmdFmt
syn match muttrcVarEqualsPGPCmdFmt contained skipwhite "=" nextgroup=muttrcPGPCmdFormatStr
syn keyword muttrcVarStr	contained skipwhite ts_icon_format ts_status_format status_format nextgroup=muttrcVarEqualsStatusFmt
syn match muttrcVarEqualsStatusFmt contained skipwhite "=" nextgroup=muttrcStatusFormatStr
syn keyword muttrcVarStr	contained skipwhite pgp_getkeys_command nextgroup=muttrcVarEqualsPGPGetKeysFmt
syn match muttrcVarEqualsPGPGetKeysFmt contained skipwhite "=" nextgroup=muttrcPGPGetKeysFormatStr
syn keyword muttrcVarStr	contained skipwhite smime_decrypt_command smime_verify_command smime_verify_opaque_command smime_sign_command smime_sign_opaque_command smime_encrypt_command smime_pk7out_command smime_get_cert_command smime_get_signer_cert_command smime_import_cert_command smime_get_cert_email_command nextgroup=muttrcVarEqualsSmimeFmt
syn match muttrcVarEqualsSmimeFmt contained skipwhite "=" nextgroup=muttrcSmimeFormatStr
syn keyword muttrcVarStr	contained skipwhite date_format nextgroup=muttrcVarEqualsStrftimeFmt
syn match muttrcVarEqualsStrftimeFmt contained skipwhite "=" nextgroup=muttrcStrftimeFormatStr

syn match muttrcVPrefix		contained /[?&]/ nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn match muttrcVarStr		contained skipwhite 'my_[a-zA-Z0-9_]\+' nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcVarStr	contained skipwhite
			\ alias_file assumed_charset attach_charset attach_sep certificate_file charset
			\ config_charset content_type default_hook display_filter
			\ dsn_notify dsn_return editor entropy_file envelope_from_address escape folder
			\ forward_format from gecos_mask header_cache
			\ header_cache_compress header_cache_pagesize history_file hostname
			\ imap_authenticators imap_delim_chars imap_headers imap_idle imap_login
			\ imap_pass imap_user indent_string ispell locale mailcap_path mask
			\ mbox mbox_type message_cachedir mh_seq_flagged mh_seq_replied mh_seq_unseen
			\ mixmaster pager pgp_decryption_okay pgp_good_sign
			\ pgp_mime_signature_description pgp_mime_signature_filename pgp_sign_as
			\ pgp_sort_keys pipe_sep pop_authenticators pop_host pop_pass pop_user
			\ post_indent_string postpone_encrypt_as postponed preconnect
			\ print_command query_command quote_regexp realname record
			\ reply_regexp send_charset sendmail shell sidebar_delim sidebar_delim_chars
			\ sidebar_divider_char sidebar_format sidebar_indent_string sidebar_sort_method
			\ signature simple_search smileys smime_ca_location smime_certificates
			\ smime_default_key smime_encrypt_with smime_keys
			\ smime_sign_digest_alg smtp_authenticators smtp_pass smtp_url sort sort_alias
			\ sort_aux sort_browser spam_separator spoolfile ssl_ca_certificates_file
			\ ssl_ciphers ssl_client_cert status_chars tmpdir to_chars trash ts_icon_format
			\ ts_status_format tunnel visual
			\ nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool	contained skipwhite imap_force_ssl noimap_force_ssl invimap_force_ssl nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
"syn keyword muttrcVarQuad	contained nopgp_create_traditional invpgp_create_traditional
syn keyword muttrcVarStr	contained skipwhite alternates nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcMenu		contained alias attach browser compose editor index pager postpone pgp mix query generic
syn match muttrcMenuList "\S\+" contained contains=muttrcMenu
syn match muttrcMenuCommas /,/ contained

syn keyword muttrcHooks		contained skipwhite account-hook charset-hook iconv-hook message-hook folder-hook mbox-hook save-hook fcc-hook fcc-save-hook send-hook send2-hook reply-hook crypt-hook

syn keyword muttrcCommand	skipwhite
			\ alternative_order auto_view exec hdr_order iconv-hook ignore mailboxes
			\ mailto_allow mime_lookup my_hdr pgp-hook push score sidebar_whitelist source
			\ unalternative_order unalternative_order unauto_view ungroup unhdr_order
			\ unignore unmailboxes unmailto_allow unmime_lookup unmono unmy_hdr unscore
syn keyword muttrcCommand	skipwhite charset-hook nextgroup=muttrcRXString
syn keyword muttrcCommand	skipwhite unhook nextgroup=muttrcHooks

syn keyword muttrcCommand 	skipwhite spam nextgroup=muttrcSpamPattern
syn region muttrcSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL
syn region muttrcSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL

syn keyword muttrcCommand 	skipwhite nospam nextgroup=muttrcNoSpamPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern
syn region muttrcNoSpamPattern	contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern

syn match muttrcAttachmentsMimeType contained "[*a-z0-9_-]\+/[*a-z0-9._-]\+\s*" skipwhite nextgroup=muttrcAttachmentsMimeType
syn match muttrcAttachmentsFlag contained "[+-]\%([AI]\|inline\|attachment\)\s\+" skipwhite nextgroup=muttrcAttachmentsMimeType
syn match muttrcAttachmentsLine "^\s*\%(un\)\?attachments\s\+" skipwhite nextgroup=muttrcAttachmentsFlag

syn match muttrcUnHighlightSpace contained "\%(\s\+\|\\$\)"

syn keyword muttrcAsterisk	contained *
syn keyword muttrcListsKeyword	lists skipwhite nextgroup=muttrcGroupDef,muttrcComment
syn keyword muttrcListsKeyword	unlists skipwhite nextgroup=muttrcAsterisk,muttrcComment

syn keyword muttrcSubscribeKeyword	subscribe nextgroup=muttrcGroupDef,muttrcComment
syn keyword muttrcSubscribeKeyword	unsubscribe nextgroup=muttrcAsterisk,muttrcComment

syn keyword muttrcAlternateKeyword contained alternates unalternates
syn region muttrcAlternatesLine keepend start=+^\s*\%(un\)\?alternates\s+ skip=+\\$+ end=+$+ contains=muttrcAlternateKeyword,muttrcGroupDef,muttrcRXPat,muttrcUnHighlightSpace,muttrcComment

" muttrcVariable includes a prefix because partial strings are considered
" valid.
syn match muttrcVariable	contained "\\\@<![a-zA-Z_-]*\$[a-zA-Z_-]\+" contains=muttrcVariableInner
syn match muttrcVariableInner	contained "\$[a-zA-Z_-]\+"
syn match muttrcEscapedVariable	contained "\\\$[a-zA-Z_-]\+"

syn match muttrcBadAction	contained "[^<>]\+" contains=muttrcEmail
syn match muttrcFunction	contained "\<\%(attach\|bounce\|copy\|delete\|display\|flag\|forward\|parent\|pipe\|postpone\|print\|purge\|recall\|resend\|save\|send\|tag\|undelete\)-message\>"
syn match muttrcFunction	contained "\<\%(delete\|next\|previous\|read\|tag\|break\|undelete\)-thread\>"
syn match muttrcFunction	contained "\<link-threads\>"
syn match muttrcFunction	contained "\<\%(backward\|capitalize\|downcase\|forward\|kill\|upcase\)-word\>"
syn match muttrcFunction	contained "\<\%(delete\|filter\|first\|last\|next\|pipe\|previous\|print\|save\|select\|tag\|undelete\)-entry\>"
syn match muttrcFunction	contained "\<attach-\%(file\|key\)\>"
syn match muttrcFunction	contained "\<change-\%(dir\|folder\|folder-readonly\)\>"
syn match muttrcFunction	contained "\<check-\%(new\|traditional-pgp\)\>"
syn match muttrcFunction	contained "\<current-\%(bottom\|middle\|top\)\>"
syn match muttrcFunction	contained "\<decode-\%(copy\|save\)\>"
syn match muttrcFunction	contained "\<delete-\%(char\|pattern\|subthread\)\>"
syn match muttrcFunction	contained "\<display-\%(address\|toggle-weed\)\>"
syn match muttrcFunction	contained "\<edit\%(-\%(bcc\|cc\|description\|encoding\|fcc\|file\|from\|headers\|mime\|reply-to\|subject\|to\|type\)\)\?\>"
syn match muttrcFunction	contained "\<enter-\%(command\|mask\)\>"
syn match muttrcFunction	contained "\<half-\%(up\|down\)\>"
syn match muttrcFunction	contained "\<history-\%(up\|down\)\>"
syn match muttrcFunction	contained "\<kill-\%(eol\|eow\|line\)\>"
syn match muttrcFunction	contained "\<next-\%(line\|new\%(-then-unread\)\?\|page\|subthread\|undeleted\|unread\|unread-mailbox\)\>"
syn match muttrcFunction	contained "\<previous-\%(line\|new\%(-then-unread\)\?\|page\|subthread\|undeleted\|unread\)\>"
syn match muttrcFunction	contained "\<search\%(-\%(next\|opposite\|reverse\|toggle\)\)\?\>"
syn match muttrcFunction	contained "\<show-\%(limit\|version\)\>"
syn match muttrcFunction	contained "\<sort-\%(mailbox\|reverse\)\>"
syn match muttrcFunction	contained "\<tag-\%(pattern\|\%(sub\)\?thread\|prefix\%(-cond\)\?\)\>"
syn match muttrcFunction	contained "\<end-cond\>"
syn match muttrcFunction	contained "\<sidebar-\%(next\|next-new\|open\|page-down\|page-up\|prev\|prev-new\|toggle-visible\)\>"
syn match muttrcFunction	contained "\<toggle-\%(mailboxes\|new\|quoted\|subscribed\|unlink\|write\)\>"
syn match muttrcFunction	contained "\<undelete-\%(pattern\|subthread\)\>"
syn match muttrcFunction	contained "\<collapse-\%(parts\|thread\|all\)\>"
syn match muttrcFunction	contained "\<view-\%(attach\|attachments\|file\|mailcap\|name\|text\)\>"
syn match muttrcFunction	contained "\<\%(backspace\|backward-char\|bol\|bottom\|bottom-page\|buffy-cycle\|clear-flag\|complete\%(-query\)\?\|copy-file\|create-alias\|detach-file\|eol\|exit\|extract-keys\|\%(imap-\)\?fetch-mail\|forget-passphrase\|forward-char\|group-reply\|help\|ispell\|jump\|limit\|list-reply\|mail\|mail-key\|mark-as-new\|middle-page\|new-mime\|noop\|pgp-menu\|query\|query-append\|quit\|quote-char\|read-subthread\|redraw-screen\|refresh\|rename-file\|reply\|select-new\|set-flag\|shell-escape\|skip-quoted\|sort\|subscribe\|sync-mailbox\|top\|top-page\|transpose-chars\|unsubscribe\|untag-pattern\|verify-key\|what-key\|write-fcc\)\>"
syn keyword muttrcFunction	contained imap-logout-all
if use_mutt_sidebar == 1
    syn match muttrcFunction    contained "\<sidebar-\%(prev\|next\|open\|scroll-up\|scroll-down\)"
endif
syn match muttrcAction		contained "<[^>]\{-}>" contains=muttrcBadAction,muttrcFunction,muttrcKeyName

syn keyword muttrcCommand	set     skipwhite nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	unset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	reset   skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syn keyword muttrcCommand	toggle  skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn match muttrcBindFunction	contained /\S\+\>/ skipwhite contains=muttrcFunction
syn match muttrcBindFunctionNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syn match muttrcBindKey		contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syn match muttrcBindKeyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindKey,muttrcBindKeyNL
syn match muttrcBindMenuList	contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcBindKey,muttrcBindKeyNL
syn match muttrcBindMenuListNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindMenuList,muttrcBindMenuListNL
syn keyword muttrcCommand	skipwhite bind nextgroup=muttrcBindMenuList,muttrcBindMenuListNL

syn region muttrcMacroDescr	contained keepend skipwhite start=+\s*\S+ms=e skip=+\\ + end=+ \|$+me=s
syn region muttrcMacroDescr	contained keepend skipwhite start=+'+ms=e skip=+\\'+ end=+'+me=s
syn region muttrcMacroDescr	contained keepend skipwhite start=+"+ms=e skip=+\\"+ end=+"+me=s
syn match muttrcMacroDescrNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody	contained skipwhite start="\S" skip='\\ \|\\$' end=' \|$' contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcCommand,muttrcAction nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody matchgroup=Type contained skipwhite start=+'+ms=e skip=+\\'+ end=+'\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn region muttrcMacroBody matchgroup=Type contained skipwhite start=+"+ms=e skip=+\\"+ end=+"\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syn match muttrcMacroBodyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syn match muttrcMacroKey	contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syn match muttrcMacroKeyNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syn match muttrcMacroMenuList	contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syn match muttrcMacroMenuListNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL
syn keyword muttrcCommand	skipwhite macro	nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL

syn match muttrcAddrContent	contained "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+\s*" skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn region muttrcAddrContent	contained start=+'+ end=+'\s*+ skip=+\\'+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn region muttrcAddrContent	contained start=+"+ end=+"\s*+ skip=+\\"+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syn match muttrcAddrDef 	contained "-addr\s\+" skipwhite nextgroup=muttrcAddrContent

syn match muttrcGroupFlag	contained "-group"
syn region muttrcGroupDef	contained start="-group\s\+" skip="\\$" end="\s" skipwhite keepend contains=muttrcGroupFlag,muttrcUnHighlightSpace

syn keyword muttrcGroupKeyword	contained group ungroup
syn region muttrcGroupLine	keepend start=+^\s*\%(un\)\?group\s+ skip=+\\$+ end=+$+ contains=muttrcGroupKeyword,muttrcGroupDef,muttrcAddrDef,muttrcRXDef,muttrcUnHighlightSpace,muttrcComment

syn match muttrcAliasGroupName	contained /\w\+/ skipwhite nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syn match muttrcAliasGroupDefNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL
syn match muttrcAliasGroupDef	contained /\s*-group/ skipwhite nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL contains=muttrcGroupFlag
syn match muttrcAliasComma	contained /,/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasEmail	contained /\S\+@\S\+/ contains=muttrcEmail nextgroup=muttrcAliasName,muttrcAliasNameNL skipwhite
syn match muttrcAliasEncEmail	contained /<[^>]\+>/ contains=muttrcEmail nextgroup=muttrcAliasComma
syn match muttrcAliasEncEmailNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syn match muttrcAliasNameNoParens contained /[^<(@]\+\s\+/ nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syn region muttrcAliasName	contained matchgroup=Type start=/(/ end=/)/ skipwhite
syn match muttrcAliasNameNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasName,muttrcAliasNameNL
syn match muttrcAliasENNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasKey	contained /\s*[^- \t]\S\+/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syn match muttrcAliasNL		contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syn keyword muttrcCommand	skipwhite alias nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL

syn match muttrcUnAliasKey	contained "\s*\w\+\s*" skipwhite nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syn match muttrcUnAliasNL	contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syn keyword muttrcCommand	skipwhite unalias nextgroup=muttrcUnAliasKey,muttrcUnAliasNL

syn region muttrcSimplePatString contained keepend start=+"+ end=+"+ skip=+\\"+
syn region muttrcSimplePatString contained keepend start=+'+ end=+'+ skip=+\\'+
syn region muttrcSimplePatString contained keepend start=+[^ 	"']+ skip=+\\ + end=+\s+re=e-1
syn region muttrcSimplePatRXContainer contained keepend start=+"+ end=+"+ skip=+\\"+ contains=muttrcRXString
syn region muttrcSimplePatRXContainer contained keepend start=+'+ end=+'+ skip=+\\'+ contains=muttrcRXString
syn region muttrcSimplePatRXContainer contained keepend start=+[^ 	"']+ skip=+\\ + end=+\s+re=e-1 contains=muttrcRXString
syn match muttrcSimplePatMetas contained /[(|)]/

syn match muttrcOptSimplePat contained skipwhite /[~=%!(^].*/ contains=muttrcSimplePat,muttrcSimplePatMetas
syn match muttrcOptSimplePat contained skipwhite /[^~=%!(^].*/ contains=muttrcRXString
syn region muttrcPatternInner contained keepend start=+"[~=%!(^]+ms=s+1 skip=+\\"+ end=+"+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syn region muttrcPatternInner contained keepend start=+'[~=%!(^]+ms=s+1 skip=+\\'+ end=+'+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas

" Colour definitions takes object, foreground and background arguments (regexps excluded).
syn match muttrcColorMatchCount	contained "[0-9]\+"
syn match muttrcColorMatchCountNL contained skipwhite skipnl "\s*\\$" nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn region muttrcColorRXPat	contained start=+\s*'+ skip=+\\'+ end=+'\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn region muttrcColorRXPat	contained start=+\s*"+ skip=+\\"+ end=+"\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syn keyword muttrcColorField	skipwhite contained
			\ attachment body bold error hdrdefault header index indicator markers message
			\ normal prompt quoted search sidebar-divider sidebar-flagged sidebar-highlight
			\ sidebar-indicator sidebar-new sidebar-spoolfile signature status tilde tree
			\ underline
syn match   muttrcColorField	contained "\<quoted\d\=\>"
if use_mutt_sidebar == 1
    syn keyword muttrcColorField contained sidebar_new
endif
syn keyword muttrcColor	contained black blue cyan default green magenta red white yellow
syn keyword muttrcColor	contained brightblack brightblue brightcyan brightdefault brightgreen brightmagenta brightred brightwhite brightyellow
syn match   muttrcColor	contained "\<\%(bright\)\=color\d\{1,3}\>"
" Now for the structure of the color line
syn match muttrcColorRXNL	contained skipnl "\s*\\$" nextgroup=muttrcColorRXPat,muttrcColorRXNL
syn match muttrcColorBG 	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorRXPat,muttrcColorRXNL
syn match muttrcColorBGNL	contained skipnl "\s*\\$" nextgroup=muttrcColorBG,muttrcColorBGNL
syn match muttrcColorFG 	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBG,muttrcColorBGNL
syn match muttrcColorFGNL	contained skipnl "\s*\\$" nextgroup=muttrcColorFG,muttrcColorFGNL
syn match muttrcColorContext 	contained /\s*[$]\?\w\+/ contains=muttrcColorField,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorFG,muttrcColorFGNL
syn match muttrcColorNL 	contained skipnl "\s*\\$" nextgroup=muttrcColorContext,muttrcColorNL
syn match muttrcColorKeyword	contained /^\s*color\s\+/ nextgroup=muttrcColorContext,muttrcColorNL
syn region muttrcColorLine keepend start=/^\s*color\s\+\%(index\|header\)\@!/ skip=+\\$+ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace
" Now for the structure of the color index line
syn match muttrcPatternNL	contained skipnl "\s*\\$" nextgroup=muttrcPattern,muttrcPatternNL
syn match muttrcColorBGI	contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcPattern,muttrcPatternNL
syn match muttrcColorBGNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorBGI,muttrcColorBGNLI
syn match muttrcColorFGI	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGI,muttrcColorBGNLI
syn match muttrcColorFGNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorFGI,muttrcColorFGNLI
syn match muttrcColorContextI	contained /\s*\<index\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGI,muttrcColorFGNLI
syn match muttrcColorNLI	contained skipnl "\s*\\$" nextgroup=muttrcColorContextI,muttrcColorNLI
syn match muttrcColorKeywordI	contained skipwhite /\<color\>/ nextgroup=muttrcColorContextI,muttrcColorNLI
syn region muttrcColorLine keepend skipwhite start=/\<color\s\+index\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordI,muttrcComment,muttrcUnHighlightSpace
" Now for the structure of the color header line
syn match muttrcRXPatternNL	contained skipnl "\s*\\$" nextgroup=muttrcRXString,muttrcRXPatternNL
syn match muttrcColorBGH	contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcRXString,muttrcRXPatternNL
syn match muttrcColorBGNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorBGH,muttrcColorBGNLH
syn match muttrcColorFGH	contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGH,muttrcColorBGNLH
syn match muttrcColorFGNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorFGH,muttrcColorFGNLH
syn match muttrcColorContextH	contained /\s*\<header\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGH,muttrcColorFGNLH
syn match muttrcColorNLH	contained skipnl "\s*\\$" nextgroup=muttrcColorContextH,muttrcColorNLH
syn match muttrcColorKeywordH	contained skipwhite /\<color\>/ nextgroup=muttrcColorContextH,muttrcColorNLH
syn region muttrcColorLine keepend skipwhite start=/\<color\s\+header\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordH,muttrcComment,muttrcUnHighlightSpace
" And now color's brother:
syn region muttrcUnColorPatterns contained skipwhite start=+\s*'+ end=+'+ skip=+\\'+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn region muttrcUnColorPatterns contained skipwhite start=+\s*"+ end=+"+ skip=+\\"+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorPatterns contained skipwhite /\s*[^'"\s]\S\*/ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorPatNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syn match muttrcUnColorAll	contained skipwhite /[*]/
syn match muttrcUnColorAPNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syn match muttrcUnColorIndex	contained skipwhite /\s*index\s\+/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syn match muttrcUnColorIndexNL	contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syn match muttrcUnColorKeyword	contained skipwhite /^\s*uncolor\s\+/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syn region muttrcUnColorLine keepend start=+^\s*uncolor\s+ skip=+\\$+ end=+$+ contains=muttrcUnColorKeyword,muttrcComment,muttrcUnHighlightSpace

" Mono are almost like color (ojects inherited from color)
syn keyword muttrcMonoAttrib	contained bold none normal reverse standout underline
syn keyword muttrcMono		contained mono		skipwhite nextgroup=muttrcColorField
syn match   muttrcMonoLine	"^\s*mono\s\+\S\+"	skipwhite nextgroup=muttrcMonoAttrib contains=muttrcMono

" Vim syntax file for the NeoMutt attach-headers-color feature.

syntax keyword muttrcColorField contained attach_headers

" Vim syntax file for the NeoMutt compress feature.

syntax keyword muttrcCommand    append-hook
syntax keyword muttrcCommand    close-hook
syntax keyword muttrcCommand    open-hook

" Vim syntax file for the NeoMutt encrypt-to-self feature.

syntax keyword muttrcVarQuad    contained skipwhite smime_encrypt_self    nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad    contained skipwhite pgp_encrypt_self      nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" Vim syntax file for the NeoMutt forgotten-attachment feature.

syntax keyword muttrcVarBool    skipwhite contained abort_noattach         nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite attach_keyword         nextgroup=muttrcVarEqualsIdxFmt

" Vim syntax file for the NeoMutt ifdef feature.

syntax keyword muttrcCommand    ifdef
syntax keyword muttrcCommand    ifndef
syntax keyword muttrcCommand    finish

" Vim syntax file for the NeoMutt index-color feature.

syntax keyword muttrcColorField contained index
syntax keyword muttrcColorField contained index_author
syntax keyword muttrcColorField contained index_collapsed
syntax keyword muttrcColorField contained index_date
syntax keyword muttrcColorField contained index_flags
syntax keyword muttrcColorField contained index_label
syntax keyword muttrcColorField contained index_number
syntax keyword muttrcColorField contained index_size
syntax keyword muttrcColorField contained index_subject
syn region muttrcColorLine keepend start=/^\s*color\s\+index_\%(author\|collapsed\|date\|flags\|label\|number\|size\|subject\)/ skip=+\\$+ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace
" Vim syntax file for the NeoMutt keywords feature.

syntax keyword muttrcVarBool    contained skipwhite keywords_legacy       nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite keywords_standard     nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite xlabel_delimiter      nextgroup=muttrcVarEqualsIdxFmt

syntax match muttrcFunction     contained "\<edit-label\>"

" Vim syntax file for the NeoMutt new-mail feature.

syntax keyword muttrcVarStr     contained skipwhite new_mail_command         nextgroup=muttrcVarEqualsIdxFmt

" Vim syntax file for the NeoMutt nntp feature.

syntax keyword muttrcVarBool    contained skipwhite ask_follow_up         nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite ask_x_comment_to      nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite mime_subject          nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite nntp_listgroup        nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite nntp_load_description nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite save_unsubscribed     nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite show_new_news         nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite show_only_unread      nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite x_comment_to          nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarNum     contained skipwhite nntp_context          nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum     contained skipwhite nntp_poll             nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarQuad    contained skipwhite catchup_newsgroup     nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad    contained skipwhite followup_to_poster    nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad    contained skipwhite post_moderated        nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite group_index_format    nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite inews                 nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite newsgroups_charset    nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite newsrc                nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite news_cache_dir        nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite news_server           nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nntp_authenticators   nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nntp_pass             nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nntp_user             nextgroup=muttrcVarEqualsIdxFmt

syntax match muttrcFunction     contained "\<attach-news-message\>"
syntax match muttrcFunction     contained "\<catchup\>"
syntax match muttrcFunction     contained "\<change-newsgroup-readonly\>"
syntax match muttrcFunction     contained "\<change-newsgroup\>"
syntax match muttrcFunction     contained "\<edit-followup-to\>"
syntax match muttrcFunction     contained "\<edit-newsgroups\>"
syntax match muttrcFunction     contained "\<edit-x-comment-to\>"
syntax match muttrcFunction     contained "\<followup-message\>"
syntax match muttrcFunction     contained "\<forward-to-group\>"
syntax match muttrcFunction     contained "\<get-children\>"
syntax match muttrcFunction     contained "\<get-message\>"
syntax match muttrcFunction     contained "\<get-parent\>"
syntax match muttrcFunction     contained "\<post-message\>"
syntax match muttrcFunction     contained "\<reconstruct-thread\>"
syntax match muttrcFunction     contained "\<reload-active\>"
syntax match muttrcFunction     contained "\<subscribe-pattern\>"
syntax match muttrcFunction     contained "\<toggle-read\>"
syntax match muttrcFunction     contained "\<uncatchup\>"
syntax match muttrcFunction     contained "\<unsubscribe-pattern\>"

" Vim syntax file for the NeoMutt notmuch feature.

syntax keyword muttrcVarBool    contained skipwhite nm_record             nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite virtual_spoolfile     nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarNum     contained skipwhite nm_db_limit           nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum     contained skipwhite nm_open_timeout       nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarNum     contained skipwhite nm_query_window_duration nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum     contained skipwhite nm_query_window_timebase nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite nm_default_uri        nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nm_exclude_tags       nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nm_hidden_tags        nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nm_query_type         nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nm_record_tags        nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite nm_unread_tag         nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite vfolder_format        nextgroup=muttrcVarEqualsIdxFmt

syntax keyword muttrcCommand    virtual-mailboxes
syntax keyword muttrcCommand    tag-transforms
syntax keyword muttrcCommand    tag-formats

syntax match muttrcFunction     contained "\<change-vfolder\>"
syntax match muttrcFunction     contained "\<entire-thread\>"
syntax match muttrcFunction     contained "\<modify-labels-then-hide\>"
syntax match muttrcFunction     contained "\<modify-labels\>"
syntax match muttrcFunction     contained "\<sidebar-toggle-virtual\>"
syntax match muttrcFunction     contained "\<vfolder-from-query\>"
syntax match muttrcFunction     contained "\<vfolder-window-forward\>"
syntax match muttrcFunction     contained "\<vfolder-window-backward\>"

" Vim syntax file for the NeoMutt progress feature.

syntax keyword muttrcColorField contained progress

" Vim syntax file for the NeoMutt quasi-delete feature.

syntax match muttrcFunction     contained "\<quasi-delete\>"

" Vim syntax file for the NeoMutt reply-with-xorig feature.

syntax keyword muttrcVarBool    skipwhite contained reply_with_xorig         nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" Vim syntax file for the NeoMutt sidebar feature.

syntax keyword muttrcVarBool    contained skipwhite sidebar_folder_indent nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite sidebar_new_mail_only nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite sidebar_next_new_wrap nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite sidebar_short_path    nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool    contained skipwhite sidebar_visible       nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarNum     contained skipwhite sidebar_width         nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite sidebar_divider_char  nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite sidebar_delim_chars   nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite sidebar_format        nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite sidebar_indent_string nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr     contained skipwhite sidebar_sort_method   nextgroup=muttrcVarEqualsIdxFmt

syntax keyword muttrcCommand    sidebar_whitelist

syntax match muttrcFunction     contained "\<sidebar-next\>"
syntax match muttrcFunction     contained "\<sidebar-next-new\>"
syntax match muttrcFunction     contained "\<sidebar-open\>"
syntax match muttrcFunction     contained "\<sidebar-page-down\>"
syntax match muttrcFunction     contained "\<sidebar-page-up\>"
syntax match muttrcFunction     contained "\<sidebar-prev\>"
syntax match muttrcFunction     contained "\<sidebar-prev-new\>"
syntax match muttrcFunction     contained "\<sidebar-toggle-visible\>"

syntax keyword muttrcColorField contained sidebar_divider
syntax keyword muttrcColorField contained sidebar_flagged
syntax keyword muttrcColorField contained sidebar_highlight
syntax keyword muttrcColorField contained sidebar_indicator
syntax keyword muttrcColorField contained sidebar_new

" Vim syntax file for the NeoMutt timeout feature.

syntax keyword muttrcCommand    timeout-hook

" Vim syntax file for the NeoMutt miscellany (options without features).

syntax keyword muttrcVarBool    contained skipwhite collapse_all nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax keyword muttrcVarStr     contained skipwhite header_cache_backend nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

