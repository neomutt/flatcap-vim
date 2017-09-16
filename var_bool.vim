" neomutt boolean config variables
" For each variable X: X, noX and invX are defined
" Note: the nextgroup's are different -- I think they should be the same

syn keyword muttrcVarBool contained skipwhite
	\ allow_8bit allow_ansi arrow_cursor ascii_chars askbcc askcc
	\ ask_follow_up ask_x_comment_to attach_split autoedit auto_tag beep
	\ beep_new bounce_delivered braille_friendly check_mbox_size check_new
	\ collapse_all collapse_flagged collapse_unread confirmappend
	\ confirmcreate crypt_autoencrypt crypt_autopgp crypt_autosign
	\ crypt_autosmime crypt_confirmhook crypt_opportunistic_encrypt
	\ crypt_replyencrypt crypt_replysign crypt_replysignencrypted
	\ crypt_timestamp crypt_use_gpgme crypt_use_pka delete_untag
	\ digest_collapse duplicate_threads edit_headers encode_from fast_reply
	\ fcc_clear flag_safe followup_to force_name forward_decode
	\ forward_decrypt forward_quote forward_references hdrs header
	\ header_cache_compress header_color_partial help hidden_host
	\ hide_limited hide_missing hide_thread_subject hide_top_limited
	\ hide_top_missing history_remove_dups honor_disposition idn_decode
	\ idn_encode ignore_linear_white_space ignore_list_reply_to
	\ imap_check_subscribed imap_idle imap_list_subscribed imap_passive
	\ imap_peek imap_servernoise implicit_autoview include_onlyfirst
	\ keep_flagged keywords_legacy keywords_standard mailcap_sanitize
	\ maildir_check_cur maildir_header_cache_verify maildir_trash
	\ mail_check_recent mail_check_stats markers mark_old menu_move_off
	\ menu_scroll message_cache_clean meta_key metoo mh_purge
	\ mime_forward_decode mime_subject mime_type_query_first narrow_tree
	\ nm_record nntp_listgroup nntp_load_description pager_stop
	\ pgp_autoinline pgp_auto_decode pgp_check_exit pgp_ignore_subkeys
	\ pgp_long_ids pgp_replyinline pgp_retainable_sigs pgp_self_encrypt
	\ pgp_show_unusable pgp_strict_enc pgp_use_gpg_agent pipe_decode
	\ pipe_split pop_auth_try_all pop_last postpone_encrypt print_decode
	\ print_split prompt_after read_only reflow_space_quotes reflow_text
	\ reply_self reply_with_xorig resolve resume_draft_files
	\ resume_edited_draft_files reverse_alias reverse_name reverse_realname
	\ rfc2047_parameters save_address save_empty save_name save_unsubscribed
	\ score show_new_news show_only_unread sidebar_folder_indent
	\ sidebar_new_mail_only sidebar_next_new_wrap sidebar_on_right
	\ sidebar_short_path sidebar_visible sig_dashes sig_on_top smart_wrap
	\ smime_ask_cert_label smime_decrypt_use_default_key smime_is_default
	\ smime_self_encrypt sort_re ssl_force_tls ssl_usesystemcerts
	\ ssl_use_sslv2 ssl_use_sslv3 ssl_use_tlsv1 ssl_use_tlsv1_1
	\ ssl_use_tlsv1_2 ssl_verify_dates ssl_verify_host
	\ ssl_verify_partial_chains status_on_top strict_threads suspend
	\ text_flowed thorough_search thread_received tilde ts_enabled
	\ uncollapse_jump uncollapse_new user_agent use_8bitmime use_domain
	\ use_envelope_from use_from use_ipv6 virtual_spoolfile wait_key weed
	\ wrap_search write_bcc x_comment_to
	\ nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool skipwhite contained
	\ noallow_8bit noallow_ansi noarrow_cursor noascii_chars noaskbcc noaskcc
	\ noask_follow_up noask_x_comment_to noattach_split noautoedit noauto_tag nobeep
	\ nobeep_new nobounce_delivered nobraille_friendly nocheck_mbox_size nocheck_new
	\ nocollapse_all nocollapse_flagged nocollapse_unread noconfirmappend
	\ noconfirmcreate nocrypt_autoencrypt nocrypt_autopgp nocrypt_autosign
	\ nocrypt_autosmime nocrypt_confirmhook nocrypt_opportunistic_encrypt
	\ nocrypt_replyencrypt nocrypt_replysign nocrypt_replysignencrypted
	\ nocrypt_timestamp nocrypt_use_gpgme nocrypt_use_pka nodelete_untag
	\ nodigest_collapse noduplicate_threads noedit_headers noencode_from nofast_reply
	\ nofcc_clear noflag_safe nofollowup_to noforce_name noforward_decode
	\ noforward_decrypt noforward_quote noforward_references nohdrs noheader
	\ noheader_cache_compress noheader_color_partial nohelp nohidden_host
	\ nohide_limited nohide_missing nohide_thread_subject nohide_top_limited
	\ nohide_top_missing nohistory_remove_dups nohonor_disposition noidn_decode
	\ noidn_encode noignore_linear_white_space noignore_list_reply_to
	\ noimap_check_subscribed noimap_idle noimap_list_subscribed noimap_passive
	\ noimap_peek noimap_servernoise noimplicit_autoview noinclude_onlyfirst
	\ nokeep_flagged nokeywords_legacy nokeywords_standard nomailcap_sanitize
	\ nomaildir_check_cur nomaildir_header_cache_verify nomaildir_trash
	\ nomail_check_recent nomail_check_stats nomarkers nomark_old nomenu_move_off
	\ nomenu_scroll nomessage_cache_clean nometa_key nometoo nomh_purge
	\ nomime_forward_decode nomime_subject nomime_type_query_first nonarrow_tree
	\ nonm_record nonntp_listgroup nonntp_load_description nopager_stop
	\ nopgp_autoinline nopgp_auto_decode nopgp_check_exit nopgp_ignore_subkeys
	\ nopgp_long_ids nopgp_replyinline nopgp_retainable_sigs nopgp_self_encrypt
	\ nopgp_show_unusable nopgp_strict_enc nopgp_use_gpg_agent nopipe_decode
	\ nopipe_split nopop_auth_try_all nopop_last nopostpone_encrypt noprint_decode
	\ noprint_split noprompt_after noread_only noreflow_space_quotes noreflow_text
	\ noreply_self noreply_with_xorig noresolve noresume_draft_files
	\ noresume_edited_draft_files noreverse_alias noreverse_name noreverse_realname
	\ norfc2047_parameters nosave_address nosave_empty nosave_name nosave_unsubscribed
	\ noscore noshow_new_news noshow_only_unread nosidebar_folder_indent
	\ nosidebar_new_mail_only nosidebar_next_new_wrap nosidebar_on_right
	\ nosidebar_short_path nosidebar_visible nosig_dashes nosig_on_top nosmart_wrap
	\ nosmime_ask_cert_label nosmime_decrypt_use_default_key nosmime_is_default
	\ nosmime_self_encrypt nosort_re nossl_force_tls nossl_usesystemcerts
	\ nossl_use_sslv2 nossl_use_sslv3 nossl_use_tlsv1 nossl_use_tlsv1_1
	\ nossl_use_tlsv1_2 nossl_verify_dates nossl_verify_host
	\ nossl_verify_partial_chains nostatus_on_top nostrict_threads nosuspend
	\ notext_flowed nothorough_search nothread_received notilde nots_enabled
	\ nouncollapse_jump nouncollapse_new nouser_agent nouse_8bitmime nouse_domain
	\ nouse_envelope_from nouse_from nouse_ipv6 novirtual_spoolfile nowait_key noweed
	\ nowrap_search nowrite_bcc nox_comment_to
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarBool skipwhite contained
	\ invallow_8bit invallow_ansi invarrow_cursor invascii_chars invaskbcc invaskcc
	\ invask_follow_up invask_x_comment_to invattach_split invautoedit invauto_tag invbeep
	\ invbeep_new invbounce_delivered invbraille_friendly invcheck_mbox_size invcheck_new
	\ invcollapse_all invcollapse_flagged invcollapse_unread invconfirmappend
	\ invconfirmcreate invcrypt_autoencrypt invcrypt_autopgp invcrypt_autosign
	\ invcrypt_autosmime invcrypt_confirmhook invcrypt_opportunistic_encrypt
	\ invcrypt_replyencrypt invcrypt_replysign invcrypt_replysignencrypted
	\ invcrypt_timestamp invcrypt_use_gpgme invcrypt_use_pka invdelete_untag
	\ invdigest_collapse invduplicate_threads invedit_headers invencode_from invfast_reply
	\ invfcc_clear invflag_safe invfollowup_to invforce_name invforward_decode
	\ invforward_decrypt invforward_quote invforward_references invhdrs invheader
	\ invheader_cache_compress invheader_color_partial invhelp invhidden_host
	\ invhide_limited invhide_missing invhide_thread_subject invhide_top_limited
	\ invhide_top_missing invhistory_remove_dups invhonor_disposition invidn_decode
	\ invidn_encode invignore_linear_white_space invignore_list_reply_to
	\ invimap_check_subscribed invimap_idle invimap_list_subscribed invimap_passive
	\ invimap_peek invimap_servernoise invimplicit_autoview invinclude_onlyfirst
	\ invkeep_flagged invkeywords_legacy invkeywords_standard invmailcap_sanitize
	\ invmaildir_check_cur invmaildir_header_cache_verify invmaildir_trash
	\ invmail_check_recent invmail_check_stats invmarkers invmark_old invmenu_move_off
	\ invmenu_scroll invmessage_cache_clean invmeta_key invmetoo invmh_purge
	\ invmime_forward_decode invmime_subject invmime_type_query_first invnarrow_tree
	\ invnm_record invnntp_listgroup invnntp_load_description invpager_stop
	\ invpgp_autoinline invpgp_auto_decode invpgp_check_exit invpgp_ignore_subkeys
	\ invpgp_long_ids invpgp_replyinline invpgp_retainable_sigs invpgp_self_encrypt
	\ invpgp_show_unusable invpgp_strict_enc invpgp_use_gpg_agent invpipe_decode
	\ invpipe_split invpop_auth_try_all invpop_last invpostpone_encrypt invprint_decode
	\ invprint_split invprompt_after invread_only invreflow_space_quotes invreflow_text
	\ invreply_self invreply_with_xorig invresolve invresume_draft_files
	\ invresume_edited_draft_files invreverse_alias invreverse_name invreverse_realname
	\ invrfc2047_parameters invsave_address invsave_empty invsave_name invsave_unsubscribed
	\ invscore invshow_new_news invshow_only_unread invsidebar_folder_indent
	\ invsidebar_new_mail_only invsidebar_next_new_wrap invsidebar_on_right
	\ invsidebar_short_path invsidebar_visible invsig_dashes invsig_on_top invsmart_wrap
	\ invsmime_ask_cert_label invsmime_decrypt_use_default_key invsmime_is_default
	\ invsmime_self_encrypt invsort_re invssl_force_tls invssl_usesystemcerts
	\ invssl_use_sslv2 invssl_use_sslv3 invssl_use_tlsv1 invssl_use_tlsv1_1
	\ invssl_use_tlsv1_2 invssl_verify_dates invssl_verify_host
	\ invssl_verify_partial_chains invstatus_on_top invstrict_threads invsuspend
	\ invtext_flowed invthorough_search invthread_received invtilde invts_enabled
	\ invuncollapse_jump invuncollapse_new invuser_agent invuse_8bitmime invuse_domain
	\ invuse_envelope_from invuse_from invuse_ipv6 invvirtual_spoolfile invwait_key invweed
	\ invwrap_search invwrite_bcc invx_comment_to
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" vim: syn=vim ts=8 sw=8 noet tw=0
