syntax keyword muttrcAlternateKeyword         contained alternates unalternates
syntax keyword muttrcAsterisk                 contained *
syntax keyword muttrcColor                    contained black blue cyan default green magenta red white yellow
syntax keyword muttrcColor                    contained brightblack brightblue brightcyan brightdefault brightgreen brightmagenta brightred brightwhite brightyellow
syntax keyword muttrcColorField               contained attach_headers
syntax keyword muttrcColorField               contained index
syntax keyword muttrcColorField               contained index_author
syntax keyword muttrcColorField               contained index_collapsed
syntax keyword muttrcColorField               contained index_date
syntax keyword muttrcColorField               contained index_flags
syntax keyword muttrcColorField               contained index_label
syntax keyword muttrcColorField               contained index_number
syntax keyword muttrcColorField               contained index_size
syntax keyword muttrcColorField               contained index_subject
syntax keyword muttrcColorField               contained progress
syntax keyword muttrcColorField               contained sidebar_divider
syntax keyword muttrcColorField               contained sidebar_flagged
syntax keyword muttrcColorField               contained sidebar_highlight
syntax keyword muttrcColorField               contained sidebar_indicator
syntax keyword muttrcColorField               contained sidebar_new
syntax keyword muttrcColorField               contained sidebar_new
syntax keyword muttrcColorField               skipwhite contained attachment body bold error hdrdefault header index indicator markers message normal prompt quoted search sidebar-divider sidebar-flagged sidebar-highlight sidebar-indicator sidebar-new sidebar-spoolfile signature status tilde tree underline
syntax keyword muttrcCommand                  append-hook
syntax keyword muttrcCommand                  close-hook
syntax keyword muttrcCommand                  finish
syntax keyword muttrcCommand                  ifdef
syntax keyword muttrcCommand                  ifndef
syntax keyword muttrcCommand                  open-hook
syntax keyword muttrcCommand                  reset skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcCommand                  set skipwhite nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcCommand                  sidebar_whitelist
syntax keyword muttrcCommand                  skipwhite alias nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syntax keyword muttrcCommand                  skipwhite alternative_order auto_view exec hdr_order iconv-hook ignore mailboxes mailto_allow mime_lookup my_hdr pgp-hook push score sidebar_whitelist source unalternative_order unalternative_order unauto_view ungroup unhdr_order unignore unmailboxes unmailto_allow unmime_lookup unmono unmy_hdr unscore
syntax keyword muttrcCommand                  skipwhite bind nextgroup=muttrcBindMenuList,muttrcBindMenuListNL
syntax keyword muttrcCommand                  skipwhite charset-hook nextgroup=muttrcRXString
syntax keyword muttrcCommand                  skipwhite macro nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL
syntax keyword muttrcCommand                  skipwhite nospam nextgroup=muttrcNoSpamPattern
syntax keyword muttrcCommand                  skipwhite spam nextgroup=muttrcSpamPattern
syntax keyword muttrcCommand                  skipwhite unalias nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syntax keyword muttrcCommand                  skipwhite unhook nextgroup=muttrcHooks
syntax keyword muttrcCommand                  tag-formats
syntax keyword muttrcCommand                  tag-transforms
syntax keyword muttrcCommand                  timeout-hook
syntax keyword muttrcCommand                  toggle skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcCommand                  unset skipwhite nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcCommand                  virtual-mailboxes
syntax keyword muttrcFunction                 contained imap-logout-all
syntax keyword muttrcGroupKeyword             contained group ungroup
syntax keyword muttrcHooks                    contained skipwhite account-hook charset-hook iconv-hook message-hook folder-hook mbox-hook save-hook fcc-hook fcc-save-hook send-hook send2-hook reply-hook crypt-hook
syntax keyword muttrcListsKeyword             lists skipwhite nextgroup=muttrcGroupDef,muttrcComment
syntax keyword muttrcListsKeyword             unlists skipwhite nextgroup=muttrcAsterisk,muttrcComment
syntax keyword muttrcMenu                     contained alias attach browser compose editor index pager postpone pgp mix query generic
syntax keyword muttrcMono                     contained mono skipwhite nextgroup=muttrcColorField
syntax keyword muttrcMonoAttrib               contained bold none normal reverse standout underline
syntax keyword muttrcSubscribeKeyword         subscribe nextgroup=muttrcGroupDef,muttrcComment
syntax keyword muttrcSubscribeKeyword         unsubscribe nextgroup=muttrcAsterisk,muttrcComment
syntax keyword muttrcVarBool                  contained skipwhite ask_follow_up nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite ask_x_comment_to nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite collapse_all nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite imap_force_ssl noimap_force_ssl invimap_force_ssl nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite keywords_legacy nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite keywords_standard nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite mime_subject nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite nm_record nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite nntp_listgroup nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite nntp_load_description nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite save_unsubscribed nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite show_new_news nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite show_only_unread nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite sidebar_folder_indent nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite sidebar_new_mail_only nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite sidebar_next_new_wrap nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite sidebar_short_path nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite sidebar_visible nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite virtual_spoolfile nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  contained skipwhite x_comment_to nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  skipwhite contained abort_noattach nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  skipwhite contained allow_8bit allow_ansi arrow_cursor ascii_chars askbcc askcc attach_split auto_tag autoedit beep beep_new bounce_delivered braille_friendly check_mbox_size check_new collapse_unread confirmappend confirmcreate crypt_autoencrypt crypt_autopgp crypt_autosign crypt_autosmime crypt_confirmhook crypt_opportunistic_encrypt crypt_replyencrypt crypt_replysign crypt_replysignencrypted crypt_timestamp crypt_use_gpgme crypt_use_pka delete_untag digest_collapse duplicate_threads edit_headers encode_from fast_reply fcc_clear followup_to force_name forward_decode forward_decrypt forward_quote hdrs header help hidden_host hide_limited hide_missing hide_thread_subject hide_top_limited hide_top_missing honor_disposition idn_decode idn_encode ignore_linear_white_space ignore_list_reply_to imap_check_subscribed imap_list_subscribed imap_passive imap_peek imap_servernoise implicit_autoview include_onlyfirst keep_flagged mail_check_recent mail_check_stats mailcap_sanitize maildir_check_cur maildir_header_cache_verify maildir_trash mark_old markers menu_move_off menu_scroll message_cache_clean meta_key metoo mh_purge mime_forward_decode narrow_tree pager_stop pgp_auto_decode pgp_autoinline pgp_check_exit pgp_ignore_subkeys pgp_long_ids pgp_replyinline pgp_retainable_sigs pgp_show_unusable pgp_strict_enc pgp_use_gpg_agent pipe_decode pipe_split pop_auth_try_all pop_last postpone_encrypt postpone_encrypt_as print_decode print_split prompt_after read_only reflow_space_quotes reflow_text reflow_wrap reply_self resolve resume_draft_files resume_edited_draft_files reverse_alias reverse_name reverse_realname rfc2047_parameters save_address save_empty save_name score sidebar_folder_indent sidebar_new_mail_only sidebar_next_new_wrap sidebar_short_path sidebar_sort sidebar_visible sig_dashes sig_on_top smart_wrap smime_ask_cert_label smime_decrypt_use_default_key smime_is_default sort_re ssl_force_tls ssl_use_sslv2 ssl_use_sslv3 ssl_use_tlsv1 ssl_usesystemcerts ssl_verify_dates ssl_verify_host status_on_top strict_mime strict_threads suspend text_flowed thorough_search thread_received tilde ts_enabled uncollapse_jump use_8bitmime use_domain use_envelope_from use_from use_idn use_ipv6 user_agent wait_key weed wrap_search write_bcc nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  skipwhite contained invallow_8bit invallow_ansi invarrow_cursor invascii_chars invaskbcc invaskcc invattach_split invauto_tag invautoedit invbeep invbeep_new invbounce_delivered invbraille_friendly invcheck_mbox_size invcheck_new invcollapse_unread invconfirmappend invconfirmcreate invcrypt_autoencrypt invcrypt_autopgp invcrypt_autosign invcrypt_autosmime invcrypt_confirmhook invcrypt_opportunistic_encrypt invcrypt_replyencrypt invcrypt_replysign invcrypt_replysignencrypted invcrypt_timestamp invcrypt_use_gpgme invcrypt_use_pka invdelete_untag invdigest_collapse invduplicate_threads invedit_hdrs invedit_headers invencode_from invenvelope_from invfast_reply invfcc_clear invfollowup_to invforce_name invforw_decode invforw_decrypt invforw_quote invforward_decode invforward_decrypt invforward_quote invhdrs invheader invhelp invhidden_host invhide_limited invhide_missing invhide_thread_subject invhide_top_limited invhide_top_missing invhonor_disposition invidn_decode invidn_encode invignore_linear_white_space invignore_list_reply_to invimap_check_subscribed invimap_list_subscribed invimap_passive invimap_peek invimap_servernoise invimplicit_autoview invinclude_onlyfirst invkeep_flagged invmail_check_recent invmail_check_stats invmailcap_sanitize invmaildir_check_cur invmaildir_header_cache_verify invmaildir_trash invmark_old invmarkers invmenu_move_off invmenu_scroll invmessage_cache_clean invmeta_key invmetoo invmh_purge invmime_forward_decode invnarrow_tree invpager_stop invpgp_auto_decode invpgp_auto_traditional invpgp_autoencrypt invpgp_autoinline invpgp_autosign invpgp_check_exit invpgp_create_traditional invpgp_ignore_subkeys invpgp_long_ids invpgp_replyencrypt invpgp_replyinline invpgp_replysign invpgp_replysignencrypted invpgp_retainable_sigs invpgp_show_unusable invpgp_strict_enc invpgp_use_gpg_agent invpipe_decode invpipe_split invpop_auth_try_all invpop_last invpostpone_encrypt invpostpone_encrypt_as invprint_decode invprint_split invprompt_after invread_only invreflow_space_quotes invreflow_text invreflow_wrap invreply_self invresolve invresume_draft_files invresume_edited_draft_files invreverse_alias invreverse_name invreverse_realname invrfc2047_parameters invsave_address invsave_empty invsave_name invscore invsidebar_folder_indent invsidebar_new_mail_only invsidebar_next_new_wrap invsidebar_short_path invsidebar_sort invsidebar_visible invsig_dashes invsig_on_top invsmart_wrap invsmime_ask_cert_label invsmime_decrypt_use_default_key invsmime_is_default invsort_re invssl_force_tls invssl_use_sslv2 invssl_use_sslv3 invssl_use_tlsv1 invssl_usesystemcerts invssl_verify_dates invssl_verify_host invstatus_on_top invstrict_mime invstrict_threads invsuspend invtext_flowed invthorough_search invthread_received invtilde invts_enabled invuncollapse_jump invuse_8bitmime invuse_domain invuse_envelope_from invuse_from invuse_idn invuse_ipv6 invuser_agent invwait_key invweed invwrap_search invwrite_bcc nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  skipwhite contained noallow_8bit noallow_ansi noarrow_cursor noascii_chars noaskbcc noaskcc noattach_split noauto_tag noautoedit nobeep nobeep_new nobounce_delivered nobraille_friendly nocheck_mbox_size nocheck_new nocollapse_unread noconfirmappend noconfirmcreate nocrypt_autoencrypt nocrypt_autopgp nocrypt_autosign nocrypt_autosmime nocrypt_confirmhook nocrypt_opportunistic_encrypt nocrypt_replyencrypt nocrypt_replysign nocrypt_replysignencrypted nocrypt_timestamp nocrypt_use_gpgme nocrypt_use_pka nodelete_untag nodigest_collapse noduplicate_threads noedit_hdrs noedit_headers noencode_from noenvelope_from nofast_reply nofcc_clear nofollowup_to noforce_name noforw_decode noforw_decrypt noforw_quote noforward_decode noforward_decrypt noforward_quote nohdrs noheader nohelp nohidden_host nohide_limited nohide_missing nohide_thread_subject nohide_top_limited nohide_top_missing nohonor_disposition noidn_decode noidn_encode noignore_linear_white_space noignore_list_reply_to noimap_check_subscribed noimap_list_subscribed noimap_passive noimap_peek noimap_servernoise noimplicit_autoview noinclude_onlyfirst nokeep_flagged nomail_check_recent nomail_check_stats nomailcap_sanitize nomaildir_check_cur nomaildir_header_cache_verify nomaildir_trash nomark_old nomarkers nomenu_move_off nomenu_scroll nomessage_cache_clean nometa_key nometoo nomh_purge nomime_forward_decode nonarrow_tree nopager_stop nopgp_auto_decode nopgp_auto_traditional nopgp_autoencrypt nopgp_autoinline nopgp_autosign nopgp_check_exit nopgp_create_traditional nopgp_ignore_subkeys nopgp_long_ids nopgp_replyencrypt nopgp_replyinline nopgp_replysign nopgp_replysignencrypted nopgp_retainable_sigs nopgp_show_unusable nopgp_strict_enc nopgp_use_gpg_agent nopipe_decode nopipe_split nopop_auth_try_all nopop_last nopostpone_encrypt nopostpone_encrypt_as noprint_decode noprint_split noprompt_after noread_only noreflow_space_quotes noreflow_text noreflow_wrap noreply_self noresolve noresume_draft_files noresume_edited_draft_files noreverse_alias noreverse_name noreverse_realname norfc2047_parameters nosave_address nosave_empty nosave_name noscore nosidebar_folder_indent nosidebar_new_mail_only nosidebar_next_new_wrap nosidebar_short_path nosidebar_sort nosidebar_visible nosig_dashes nosig_on_top nosmart_wrap nosmime_ask_cert_label nosmime_decrypt_use_default_key nosmime_is_default nosort_re nossl_force_tls nossl_use_sslv2 nossl_use_sslv3 nossl_use_tlsv1 nossl_usesystemcerts nossl_verify_dates nossl_verify_host nostatus_on_top nostrict_mime nostrict_threads nosuspend notext_flowed nothorough_search nothread_received notilde nots_enabled nouncollapse_jump nouse_8bitmime nouse_domain nouse_envelope_from nouse_from nouse_idn nouse_ipv6 nouser_agent nowait_key noweed nowrap_search nowrite_bcc nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarBool                  skipwhite contained reply_with_xorig nextgroup=muttrcSetBoolAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nm_db_limit nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nm_open_timeout nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nm_query_window_duration nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nm_query_window_timebase nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nntp_context nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite nntp_poll nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   contained skipwhite sidebar_width nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarNum                   skipwhite contained connect_timeout history imap_keepalive imap_pipeline_depth mail_check mail_check_stats_interval menu_context net_inc pager_context pager_index_lines pgp_timeout pop_checkinterval read_inc save_history score_threshold_delete score_threshold_flag score_threshold_read search_context sendmail_wait sidebar_width sleep_time smime_timeout ssl_min_dh_prime_bits time_inc timeout wrap wrap_headers wrapmargin write_inc nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  contained skipwhite catchup_newsgroup nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  contained skipwhite followup_to_poster nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  contained skipwhite pgp_encrypt_self nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  contained skipwhite post_moderated nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  contained skipwhite smime_encrypt_self nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  skipwhite contained abort_nosubject abort_unmodified bounce copy crypt_verify_sig delete fcc_attach forward_edit honor_followup_to include mime_forward mime_forward_rest move pgp_mime_auto pop_delete pop_reconnect postpone print quit recall reply_to ssl_starttls nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  skipwhite contained invabort_nosubject invabort_unmodified invbounce invcopy invcrypt_verify_sig invdelete invfcc_attach invforward_edit invhonor_followup_to invinclude invmime_forward invmime_forward_rest invmime_fwd invmove invpgp_mime_auto invpgp_verify_sig invpop_delete invpop_reconnect invpostpone invprint invquit invrecall invreply_to invssl_starttls nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarQuad                  skipwhite contained noabort_nosubject noabort_unmodified nobounce nocopy nocrypt_verify_sig nodelete nofcc_attach noforward_edit nohonor_followup_to noinclude nomime_forward nomime_forward_rest nomime_fwd nomove nopgp_mime_auto nopgp_verify_sig nopop_delete nopop_reconnect nopostpone noprint noquit norecall noreply_to nossl_starttls nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarStr                   contained skipwhite alias_file assumed_charset attach_charset attach_sep certificate_file charset config_charset content_type default_hook display_filter dsn_notify dsn_return editor entropy_file envelope_from_address escape folder forward_format from gecos_mask header_cache header_cache_compress header_cache_pagesize history_file hostname imap_authenticators imap_delim_chars imap_headers imap_idle imap_login imap_pass imap_user indent_string ispell locale mailcap_path mask mbox mbox_type message_cachedir mh_seq_flagged mh_seq_replied mh_seq_unseen mixmaster pager pgp_decryption_okay pgp_good_sign pgp_mime_signature_description pgp_mime_signature_filename pgp_sign_as pgp_sort_keys pipe_sep pop_authenticators pop_host pop_pass pop_user post_indent_string postpone_encrypt_as postponed preconnect print_command query_command quote_regexp realname record reply_regexp send_charset sendmail shell sidebar_delim sidebar_delim_chars sidebar_divider_char sidebar_format sidebar_indent_string sidebar_sort_method signature simple_search smileys smime_ca_location smime_certificates smime_default_key smime_encrypt_with smime_keys smime_sign_digest_alg smtp_authenticators smtp_pass smtp_url sort sort_alias sort_aux sort_browser spam_separator spoolfile ssl_ca_certificates_file ssl_ciphers ssl_client_cert status_chars tmpdir to_chars trash ts_icon_format ts_status_format tunnel visual nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarStr                   contained skipwhite alias_format nextgroup=muttrcVarEqualsAliasFmt
syntax keyword muttrcVarStr                   contained skipwhite alternates nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarStr                   contained skipwhite attach_format nextgroup=muttrcVarEqualsAttachFmt
syntax keyword muttrcVarStr                   contained skipwhite attach_keyword nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite attribution index_format message_format pager_format nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite compose_format nextgroup=muttrcVarEqualsComposeFmt
syntax keyword muttrcVarStr                   contained skipwhite date_format nextgroup=muttrcVarEqualsStrftimeFmt
syntax keyword muttrcVarStr                   contained skipwhite folder_format nextgroup=muttrcVarEqualsFolderFmt
syntax keyword muttrcVarStr                   contained skipwhite group_index_format nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite header_cache_backend nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax keyword muttrcVarStr                   contained skipwhite inews nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite mix_entry_format nextgroup=muttrcVarEqualsMixFmt
syntax keyword muttrcVarStr                   contained skipwhite newsgroups_charset nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite newsrc nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite news_cache_dir nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite news_server nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite new_mail_command nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_default_uri nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_exclude_tags nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_hidden_tags nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_query_type nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_record_tags nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nm_unread_tag nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nntp_authenticators nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nntp_pass nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite nntp_user nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite pgp_decode_command pgp_verify_command pgp_decrypt_command pgp_clearsign_command pgp_sign_command pgp_encrypt_sign_command pgp_encrypt_only_command pgp_import_command pgp_export_command pgp_verify_key_command pgp_list_secring_command pgp_list_pubring_command nextgroup=muttrcVarEqualsPGPCmdFmt
syntax keyword muttrcVarStr                   contained skipwhite pgp_entry_format nextgroup=muttrcVarEqualsPGPFmt
syntax keyword muttrcVarStr                   contained skipwhite pgp_getkeys_command nextgroup=muttrcVarEqualsPGPGetKeysFmt
syntax keyword muttrcVarStr                   contained skipwhite query_format nextgroup=muttrcVarEqualsQueryFmt
syntax keyword muttrcVarStr                   contained skipwhite sidebar_delim_chars nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite sidebar_divider_char nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite sidebar_format nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite sidebar_indent_string nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite sidebar_sort_method nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite smime_decrypt_command smime_verify_command smime_verify_opaque_command smime_sign_command smime_sign_opaque_command smime_encrypt_command smime_pk7out_command smime_get_cert_command smime_get_signer_cert_command smime_import_cert_command smime_get_cert_email_command nextgroup=muttrcVarEqualsSmimeFmt
syntax keyword muttrcVarStr                   contained skipwhite ts_icon_format ts_status_format status_format nextgroup=muttrcVarEqualsStatusFmt
syntax keyword muttrcVarStr                   contained skipwhite vfolder_format nextgroup=muttrcVarEqualsIdxFmt
syntax keyword muttrcVarStr                   contained skipwhite xlabel_delimiter nextgroup=muttrcVarEqualsIdxFmt

syntax match   muttrcAction                   contained "<[^>]\{-}>" contains=muttrcBadAction,muttrcFunction,muttrcKeyName
syntax match   muttrcAddrContent              contained "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+\s*" skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syntax match   muttrcAddrDef                  contained "-addr\s\+" skipwhite nextgroup=muttrcAddrContent
syntax match   muttrcAliasComma               contained /,/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syntax match   muttrcAliasEmail               contained /\S\+@\S\+/ contains=muttrcEmail nextgroup=muttrcAliasName,muttrcAliasNameNL skipwhite
syntax match   muttrcAliasEncEmail            contained /<[^>]\+>/ contains=muttrcEmail nextgroup=muttrcAliasComma
syntax match   muttrcAliasEncEmailNL          contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syntax match   muttrcAliasENNL                contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syntax match   muttrcAliasFormatEscapes       contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[afnrt%]/
syntax match   muttrcAliasGroupDef            contained /\s*-group/ skipwhite nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL contains=muttrcGroupFlag
syntax match   muttrcAliasGroupDefNL          contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupName,muttrcAliasGroupDefNL
syntax match   muttrcAliasGroupName           contained /\w\+/ skipwhite nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syntax match   muttrcAliasKey                 contained /\s*[^- \t]\S\+/ skipwhite nextgroup=muttrcAliasEmail,muttrcAliasEncEmail,muttrcAliasNameNoParens,muttrcAliasENNL
syntax match   muttrcAliasNameNL              contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasName,muttrcAliasNameNL
syntax match   muttrcAliasNameNoParens        contained /[^<(@]\+\s\+/ nextgroup=muttrcAliasEncEmail,muttrcAliasEncEmailNL
syntax match   muttrcAliasNL                  contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcAliasGroupDef,muttrcAliasKey,muttrcAliasNL
syntax match   muttrcAttachFormatConditionals contained /%?[CcdDefInmMQstTuX]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcAttachFormatEscapes      contained /%[>|*]./
syntax match   muttrcAttachFormatEscapes      contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CcDdefImMnQstTuX%]/
syntax match   muttrcAttachmentsFlag          contained "[+-]\%([AI]\|inline\|attachment\)\s\+" skipwhite nextgroup=muttrcAttachmentsMimeType
syntax match   muttrcAttachmentsLine          "^\s*\%(un\)\?attachments\s\+" skipwhite nextgroup=muttrcAttachmentsFlag
syntax match   muttrcAttachmentsMimeType      contained "[*a-z0-9_-]\+/[*a-z0-9._-]\+\s*" skipwhite nextgroup=muttrcAttachmentsMimeType
syntax match   muttrcBadAction                contained "[^<>]\+" contains=muttrcEmail
syntax match   muttrcBindFunction             contained /\S\+\>/ skipwhite contains=muttrcFunction
syntax match   muttrcBindFunctionNL           contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syntax match   muttrcBindKey                  contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcBindFunction,muttrcBindFunctionNL
syntax match   muttrcBindKeyNL                contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindKey,muttrcBindKeyNL
syntax match   muttrcBindMenuList             contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcBindKey,muttrcBindKeyNL
syntax match   muttrcBindMenuListNL           contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcBindMenuList,muttrcBindMenuListNL
syntax match   muttrcColor                    contained "\<\%(bright\)\=color\d\{1,3}\>"
syntax match   muttrcColorBG                  contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorRXPat,muttrcColorRXNL
syntax match   muttrcColorBGH                 contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcRXString,muttrcRXPatternNL
syntax match   muttrcColorBGI                 contained /\s*[$]\?\w\+\s*/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcPattern,muttrcPatternNL
syntax match   muttrcColorBGNL                contained skipnl "\s*\\$" nextgroup=muttrcColorBG,muttrcColorBGNL
syntax match   muttrcColorBGNLH               contained skipnl "\s*\\$" nextgroup=muttrcColorBGH,muttrcColorBGNLH
syntax match   muttrcColorBGNLI               contained skipnl "\s*\\$" nextgroup=muttrcColorBGI,muttrcColorBGNLI
syntax match   muttrcColorContext             contained /\s*[$]\?\w\+/ contains=muttrcColorField,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorFG,muttrcColorFGNL
syntax match   muttrcColorContextH            contained /\s*\<header\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGH,muttrcColorFGNLH
syntax match   muttrcColorContextI            contained /\s*\<index\>/ contains=muttrcUnHighlightSpace nextgroup=muttrcColorFGI,muttrcColorFGNLI
syntax match   muttrcColorFG                  contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBG,muttrcColorBGNL
syntax match   muttrcColorFGH                 contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGH,muttrcColorBGNLH
syntax match   muttrcColorFGI                 contained /\s*[$]\?\w\+/ contains=muttrcColor,muttrcVariable,muttrcUnHighlightSpace nextgroup=muttrcColorBGI,muttrcColorBGNLI
syntax match   muttrcColorFGNL                contained skipnl "\s*\\$" nextgroup=muttrcColorFG,muttrcColorFGNL
syntax match   muttrcColorFGNLH               contained skipnl "\s*\\$" nextgroup=muttrcColorFGH,muttrcColorFGNLH
syntax match   muttrcColorFGNLI               contained skipnl "\s*\\$" nextgroup=muttrcColorFGI,muttrcColorFGNLI
syntax match   muttrcColorField               contained "\<quoted\d\=\>"
syntax match   muttrcColorKeyword             contained /^\s*color\s\+/ nextgroup=muttrcColorContext,muttrcColorNL
syntax match   muttrcColorKeywordH            contained skipwhite /\<color\>/ nextgroup=muttrcColorContextH,muttrcColorNLH
syntax match   muttrcColorKeywordI            contained skipwhite /\<color\>/ nextgroup=muttrcColorContextI,muttrcColorNLI
syntax match   muttrcColorMatchCount          contained "[0-9]\+"
syntax match   muttrcColorMatchCountNL        contained skipwhite skipnl "\s*\\$" nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syntax match   muttrcColorNL                  contained skipnl "\s*\\$" nextgroup=muttrcColorContext,muttrcColorNL
syntax match   muttrcColorNLH                 contained skipnl "\s*\\$" nextgroup=muttrcColorContextH,muttrcColorNLH
syntax match   muttrcColorNLI                 contained skipnl "\s*\\$" nextgroup=muttrcColorContextI,muttrcColorNLI
syntax match   muttrcColorRXNL                contained skipnl "\s*\\$" nextgroup=muttrcColorRXPat,muttrcColorRXNL
syntax match   muttrcComment                  "[^\\]#.*$"lc=1
syntax match   muttrcComment                  "^# .*$" contains=@Spell
syntax match   muttrcComment                  "^#$"
syntax match   muttrcComment                  "^#[^ ].*$"
syntax match   muttrcComposeFormatEscapes     contained /%[>|*]./
syntax match   muttrcComposeFormatEscapes     contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ahlv%]/
syntax match   muttrcEmail                    "[a-zA-Z0-9._-]\+@[a-zA-Z0-9./-]\+"
syntax match   muttrcEscape                   +[`|]+
syntax match   muttrcEscape                   +\\$+
syntax match   muttrcEscape                   +\\[#tnr"'Cc ]+
syntax match   muttrcEscapedVariable          contained "\\\$[a-zA-Z_-]\+"
syntax match   muttrcFolderFormatConditionals contained /%?[N]?/
syntax match   muttrcFolderFormatEscapes      contained /%[>|*]./
syntax match   muttrcFolderFormatEscapes      contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[CDdfFglNstu%]/
syntax match   muttrcFormatConditionals2      contained /[^?]*?/
syntax match   muttrcFormatErrors             contained /%./
syntax match   muttrcFunction                 contained "\<attach-news-message\>"
syntax match   muttrcFunction                 contained "\<attach-\%(file\|key\)\>"
syntax match   muttrcFunction                 contained "\<catchup\>"
syntax match   muttrcFunction                 contained "\<change-newsgroup-readonly\>"
syntax match   muttrcFunction                 contained "\<change-newsgroup\>"
syntax match   muttrcFunction                 contained "\<change-vfolder\>"
syntax match   muttrcFunction                 contained "\<change-\%(dir\|folder\|folder-readonly\)\>"
syntax match   muttrcFunction                 contained "\<check-\%(new\|traditional-pgp\)\>"
syntax match   muttrcFunction                 contained "\<collapse-\%(parts\|thread\|all\)\>"
syntax match   muttrcFunction                 contained "\<current-\%(bottom\|middle\|top\)\>"
syntax match   muttrcFunction                 contained "\<decode-\%(copy\|save\)\>"
syntax match   muttrcFunction                 contained "\<delete-\%(char\|pattern\|subthread\)\>"
syntax match   muttrcFunction                 contained "\<display-\%(address\|toggle-weed\)\>"
syntax match   muttrcFunction                 contained "\<edit-followup-to\>"
syntax match   muttrcFunction                 contained "\<edit-label\>"
syntax match   muttrcFunction                 contained "\<edit-newsgroups\>"
syntax match   muttrcFunction                 contained "\<edit-x-comment-to\>"
syntax match   muttrcFunction                 contained "\<edit\%(-\%(bcc\|cc\|description\|encoding\|fcc\|file\|from\|headers\|mime\|reply-to\|subject\|to\|type\)\)\?\>"
syntax match   muttrcFunction                 contained "\<end-cond\>"
syntax match   muttrcFunction                 contained "\<enter-\%(command\|mask\)\>"
syntax match   muttrcFunction                 contained "\<entire-thread\>"
syntax match   muttrcFunction                 contained "\<followup-message\>"
syntax match   muttrcFunction                 contained "\<forward-to-group\>"
syntax match   muttrcFunction                 contained "\<get-children\>"
syntax match   muttrcFunction                 contained "\<get-message\>"
syntax match   muttrcFunction                 contained "\<get-parent\>"
syntax match   muttrcFunction                 contained "\<half-\%(up\|down\)\>"
syntax match   muttrcFunction                 contained "\<history-\%(up\|down\)\>"
syntax match   muttrcFunction                 contained "\<kill-\%(eol\|eow\|line\)\>"
syntax match   muttrcFunction                 contained "\<link-threads\>"
syntax match   muttrcFunction                 contained "\<modify-labels-then-hide\>"
syntax match   muttrcFunction                 contained "\<modify-labels\>"
syntax match   muttrcFunction                 contained "\<next-\%(line\|new\%(-then-unread\)\?\|page\|subthread\|undeleted\|unread\|unread-mailbox\)\>"
syntax match   muttrcFunction                 contained "\<post-message\>"
syntax match   muttrcFunction                 contained "\<previous-\%(line\|new\%(-then-unread\)\?\|page\|subthread\|undeleted\|unread\)\>"
syntax match   muttrcFunction                 contained "\<quasi-delete\>"
syntax match   muttrcFunction                 contained "\<reconstruct-thread\>"
syntax match   muttrcFunction                 contained "\<reload-active\>"
syntax match   muttrcFunction                 contained "\<search\%(-\%(next\|opposite\|reverse\|toggle\)\)\?\>"
syntax match   muttrcFunction                 contained "\<show-\%(limit\|version\)\>"
syntax match   muttrcFunction                 contained "\<sidebar-next-new\>"
syntax match   muttrcFunction                 contained "\<sidebar-next\>"
syntax match   muttrcFunction                 contained "\<sidebar-open\>"
syntax match   muttrcFunction                 contained "\<sidebar-page-down\>"
syntax match   muttrcFunction                 contained "\<sidebar-page-up\>"
syntax match   muttrcFunction                 contained "\<sidebar-prev-new\>"
syntax match   muttrcFunction                 contained "\<sidebar-prev\>"
syntax match   muttrcFunction                 contained "\<sidebar-toggle-virtual\>"
syntax match   muttrcFunction                 contained "\<sidebar-toggle-visible\>"
syntax match   muttrcFunction                 contained "\<sidebar-\%(next\|next-new\|open\|page-down\|page-up\|prev\|prev-new\|toggle-visible\)\>"
syntax match   muttrcFunction                 contained "\<sidebar-\%(prev\|next\|open\|scroll-up\|scroll-down\)"
syntax match   muttrcFunction                 contained "\<sort-\%(mailbox\|reverse\)\>"
syntax match   muttrcFunction                 contained "\<subscribe-pattern\>"
syntax match   muttrcFunction                 contained "\<tag-\%(pattern\|\%(sub\)\?thread\|prefix\%(-cond\)\?\)\>"
syntax match   muttrcFunction                 contained "\<toggle-read\>"
syntax match   muttrcFunction                 contained "\<toggle-\%(mailboxes\|new\|quoted\|subscribed\|unlink\|write\)\>"
syntax match   muttrcFunction                 contained "\<uncatchup\>"
syntax match   muttrcFunction                 contained "\<undelete-\%(pattern\|subthread\)\>"
syntax match   muttrcFunction                 contained "\<unsubscribe-pattern\>"
syntax match   muttrcFunction                 contained "\<vfolder-from-query\>"
syntax match   muttrcFunction                 contained "\<vfolder-window-backward\>"
syntax match   muttrcFunction                 contained "\<vfolder-window-forward\>"
syntax match   muttrcFunction                 contained "\<view-\%(attach\|attachments\|file\|mailcap\|name\|text\)\>"
syntax match   muttrcFunction                 contained "\<\%(attach\|bounce\|copy\|delete\|display\|flag\|forward\|parent\|pipe\|postpone\|print\|purge\|recall\|resend\|save\|send\|tag\|undelete\)-message\>"
syntax match   muttrcFunction                 contained "\<\%(backspace\|backward-char\|bol\|bottom\|bottom-page\|buffy-cycle\|clear-flag\|complete\%(-query\)\?\|copy-file\|create-alias\|detach-file\|eol\|exit\|extract-keys\|\%(imap-\)\?fetch-mail\|forget-passphrase\|forward-char\|group-reply\|help\|ispell\|jump\|limit\|list-reply\|mail\|mail-key\|mark-as-new\|middle-page\|new-mime\|noop\|pgp-menu\|query\|query-append\|quit\|quote-char\|read-subthread\|redraw-screen\|refresh\|rename-file\|reply\|select-new\|set-flag\|shell-escape\|skip-quoted\|sort\|subscribe\|sync-mailbox\|top\|top-page\|transpose-chars\|unsubscribe\|untag-pattern\|verify-key\|what-key\|write-fcc\)\>"
syntax match   muttrcFunction                 contained "\<\%(backward\|capitalize\|downcase\|forward\|kill\|upcase\)-word\>"
syntax match   muttrcFunction                 contained "\<\%(delete\|filter\|first\|last\|next\|pipe\|previous\|print\|save\|select\|tag\|undelete\)-entry\>"
syntax match   muttrcFunction                 contained "\<\%(delete\|next\|previous\|read\|tag\|break\|undelete\)-thread\>"
syntax match   muttrcGroupFlag                contained "-group"
syntax match   muttrcHeader                   "\<\c\%(From\|To\|C[Cc]\|B[Cc][Cc]\|Reply-To\|Subject\|Return-Path\|Received\|Date\|Replied\|Attach\)\>:\="
syntax match   muttrcIndexFormatConditionals  contained /%?[EFHlLMNOXyY]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcIndexFormatEscapes       contained /%[>|*]./
syntax match   muttrcIndexFormatEscapes       contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[aAbBcCdDeEfFHilLmMnNOPsStTuvXyYZ%]/
syntax match   muttrcKey                      contained "\S\+" contains=muttrcKeySpecial,muttrcKeyName
syntax match   muttrcKeyName                  contained "<F[0-9]\+>"
syntax match   muttrcKeyName                  contained "\<f\%(\d\|10\)\>"
syntax match   muttrcKeyName                  contained "\c<\%(BackSpace\|BackTab\|Delete\|Down\|End\|Enter\|Esc\|Home\|Insert\|Left\|PageDown\|PageUp\|Return\|Right\|Space\|Tab\|Up\)>"
syntax match   muttrcKeyName                  contained "\\[trne]"
syntax match   muttrcKeySpecial               contained +\%(\\[Cc'"]\|\^\|\\[01]\d\{2}\)+
syntax match   muttrcMacroBodyNL              contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syntax match   muttrcMacroDescrNL             contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syntax match   muttrcMacroKey                 contained /\S\+/ skipwhite contains=muttrcKey nextgroup=muttrcMacroBody,muttrcMacroBodyNL
syntax match   muttrcMacroKeyNL               contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syntax match   muttrcMacroMenuList            contained /\S\+/ skipwhite contains=muttrcMenu,muttrcMenuCommas nextgroup=muttrcMacroKey,muttrcMacroKeyNL
syntax match   muttrcMacroMenuListNL          contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcMacroMenuList,muttrcMacroMenuListNL
syntax match   muttrcMenuCommas               /,/ contained
syntax match   muttrcMenuList                 "\S\+" contained contains=muttrcMenu
syntax match   muttrcMixFormatConditionals    contained /%?[ncsa]?/
syntax match   muttrcMixFormatEscapes         contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[ncsa%]/
syntax match   muttrcMonoLine                 "^\s*mono\s\+\S\+" skipwhite nextgroup=muttrcMonoAttrib contains=muttrcMono
syntax match   muttrcOptPattern               contained skipwhite /[.]/ nextgroup=muttrcString,muttrcStringNL
syntax match   muttrcOptPattern               contained skipwhite /[~][A-Za-z]/ contains=muttrcSimplePat nextgroup=muttrcString,muttrcStringNL
syntax match   muttrcOptSimplePat             contained skipwhite /[^~=%!(^].*/ contains=muttrcRXString
syntax match   muttrcOptSimplePat             contained skipwhite /[~=%!(^].*/ contains=muttrcSimplePat,muttrcSimplePatMetas
syntax match   muttrcPatHookNot               contained /!\s*/ skipwhite nextgroup=muttrcPattern
syntax match   muttrcPatHooks                 /\<\%(mbox\|crypt\)-hook\>/ skipwhite nextgroup=muttrcPatHookNot,muttrcPattern
syntax match   muttrcPatHooks                 /\<\%(message\|reply\|send\|send2\|save\|\|fcc\%(-save\)\?\)-hook\>/ skipwhite nextgroup=muttrcPatHookNot,muttrcOptPattern
syntax match   muttrcPattern                  contained skipwhite /[.]/
syntax match   muttrcPattern                  contained skipwhite /[~][A-Za-z]/ contains=muttrcSimplePat
syntax match   muttrcPatternNL                contained skipnl "\s*\\$" nextgroup=muttrcPattern,muttrcPatternNL
syntax match   muttrcPGPCmdFormatConditionals contained /%?[pfsar]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcPGPCmdFormatEscapes      contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[pfsar%]/
syntax match   muttrcPGPFormatConditionals    contained /%?[nkualfct]?/
syntax match   muttrcPGPFormatEscapes         contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[nkualfctp%]/
syntax match   muttrcPGPGetKeysFormatEscapes  contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[r%]/
syntax match   muttrcQueryFormatConditionals  contained /%?[e]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcQueryFormatEscapes       contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[acent%]/
syntax match   muttrcRXChars                  contained /$['"]/me=e-1
syntax match   muttrcRXChars                  contained /['"]^/ms=s+1
syntax match   muttrcRXChars                  contained /[][|()][.*?+]*/
syntax match   muttrcRXChars                  contained /[^\\][][.*?+]\+/hs=s+1
syntax match   muttrcRXChars                  contained /\\/
syntax match   muttrcRXDef                    contained "-rx\s\+" skipwhite nextgroup=muttrcRXPat
syntax match   muttrcRXHookNot                contained /!\s*/ skipwhite nextgroup=muttrcRXHookString,muttrcRXHookStringNL
syntax match   muttrcRXHooks                  /\<\%(account\|folder\)-hook\>/ skipwhite nextgroup=muttrcRXHookNot,muttrcRXHookString,muttrcRXHookStringNL
syntax match   muttrcRXHookStringNL           contained skipwhite skipnl "\s*\\$" nextgroup=muttrcRXHookString,muttrcRXHookStringNL
syntax match   muttrcRXPat                    contained /[^-'"#!]\S\+/ skipwhite contains=muttrcRXChars nextgroup=muttrcRXPat
syntax match   muttrcRXPatternNL              contained skipnl "\s*\\$" nextgroup=muttrcRXString,muttrcRXPatternNL
syntax match   muttrcSetBoolAssignment        contained skipwhite /=\s*"\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetBoolAssignment        contained skipwhite /=\s*'\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetBoolAssignment        contained skipwhite /=\s*\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetBoolAssignment        contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syntax match   muttrcSetNumAssignment         contained skipwhite /=\s*"\d\+"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetNumAssignment         contained skipwhite /=\s*'\d\+'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetNumAssignment         contained skipwhite /=\s*\d\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetNumAssignment         contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syntax match   muttrcSetQuadAssignment        contained skipwhite /=\s*"\%(ask-\)\?\%(yes\|no\)"/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetQuadAssignment        contained skipwhite /=\s*'\%(ask-\)\?\%(yes\|no\)'/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetQuadAssignment        contained skipwhite /=\s*\%(ask-\)\?\%(yes\|no\)/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcSetQuadAssignment        contained skipwhite /=\s*\\\?\$\w\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syntax match   muttrcSetStrAssignment         contained skipwhite /=\s*\%(\\\?\$\)\?[0-9A-Za-z_-]\+/hs=s+1 nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcVariable,muttrcEscapedVariable
syntax match   muttrcSimplePat                contained "!\?\^\?[%][bBcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatString
syntax match   muttrcSimplePat                contained "!\?\^\?[=][bcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatString
syntax match   muttrcSimplePat                contained "!\?\^\?[~][ADEFgGklNOpPQRSTuUvV=$]"
syntax match   muttrcSimplePat                contained "!\?\^\?[~][bBcCefhHiLstxy]\s*" nextgroup=muttrcSimplePatRXContainer
syntax match   muttrcSimplePat                contained "!\?\^\?[~][dr]\s*\%(\%(-\?[0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)*\)\|\%(\%([0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)*\)-\%([0-9]\{1,2}\%(/[0-9]\{1,2}\%(/[0-9]\{2}\%([0-9]\{2}\)\?\)\?\)\?\%([+*-][0-9]\+[ymwd]\)\?\)\?\)\|\%([<>=][0-9]\+[ymwd]\)\|\%(`[^`]\+`\)\|\%(\$[a-zA-Z0-9_-]\+\)\)" contains=muttrcShellString,muttrcVariable
syntax match   muttrcSimplePat                contained "!\?\^\?[~][mnXz]\s*\%([<>-][0-9]\+[kM]\?\|[0-9]\+[kM]\?[-]\%([0-9]\+[kM]\?\)\?\)"
syntax match   muttrcSimplePatMetas           contained /[(|)]/
syntax match   muttrcSmimeFormatConditionals  contained /%?[Cciskaf]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcSmimeFormatEscapes       contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[Cciskaf%]/
syntax match   muttrcSpecial                  +\(['"]\)!\1+
syntax match   muttrcStatusFormatConditionals contained /%?[bdFlLmMnoptuV]?/ nextgroup=muttrcFormatConditionals2
syntax match   muttrcStatusFormatEscapes      contained /%[>|*]./
syntax match   muttrcStatusFormatEscapes      contained /%\%(\%(-\?[0-9]\+\)\?\%(\.[0-9]\+\)\?\)\?[:_]\?[bdfFhlLmMnopPrsStuvV%]/
syntax match   muttrcStrftimeEscapes          contained /%E[cCxXyY]/
syntax match   muttrcStrftimeEscapes          contained /%O[BdeHImMSuUVwWy]/
syntax match   muttrcStrftimeEscapes          contained /%[AaBbCcDdeFGgHhIjklMmnpRrSsTtUuVvWwXxYyZz+%]/
syntax match   muttrcStringNL                 contained skipwhite skipnl "\s*\\$" nextgroup=muttrcString,muttrcStringNL
syntax match   muttrcUnAliasKey               contained "\s*\w\+\s*" skipwhite nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syntax match   muttrcUnAliasNL                contained /\s*\\$/ skipwhite skipnl nextgroup=muttrcUnAliasKey,muttrcUnAliasNL
syntax match   muttrcUnColorAll               contained skipwhite /[*]/
syntax match   muttrcUnColorAPNL              contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syntax match   muttrcUnColorIndex             contained skipwhite /\s*index\s\+/ nextgroup=muttrcUnColorPatterns,muttrcUnColorAll,muttrcUnColorAPNL
syntax match   muttrcUnColorIndexNL           contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syntax match   muttrcUnColorKeyword           contained skipwhite /^\s*uncolor\s\+/ nextgroup=muttrcUnColorIndex,muttrcUnColorIndexNL
syntax match   muttrcUnColorPatNL             contained skipwhite skipnl /\s*\\$/ nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syntax match   muttrcUnColorPatterns          contained skipwhite /\s*[^'"\s]\S\*/ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syntax match   muttrcUnHighlightSpace         contained "\%(\s\+\|\\$\)"
syntax match   muttrcVarEqualsAliasFmt        contained skipwhite "=" nextgroup=muttrcAliasFormatStr
syntax match   muttrcVarEqualsAttachFmt       contained skipwhite "=" nextgroup=muttrcAttachFormatStr
syntax match   muttrcVarEqualsComposeFmt      contained skipwhite "=" nextgroup=muttrcComposeFormatStr
syntax match   muttrcVarEqualsFolderFmt       contained skipwhite "=" nextgroup=muttrcFolderFormatStr
syntax match   muttrcVarEqualsIdxFmt          contained skipwhite "=" nextgroup=muttrcIndexFormatStr
syntax match   muttrcVarEqualsMixFmt          contained skipwhite "=" nextgroup=muttrcMixFormatStr
syntax match   muttrcVarEqualsPGPCmdFmt       contained skipwhite "=" nextgroup=muttrcPGPCmdFormatStr
syntax match   muttrcVarEqualsPGPFmt          contained skipwhite "=" nextgroup=muttrcPGPFormatStr
syntax match   muttrcVarEqualsPGPGetKeysFmt   contained skipwhite "=" nextgroup=muttrcPGPGetKeysFormatStr
syntax match   muttrcVarEqualsQueryFmt        contained skipwhite "=" nextgroup=muttrcQueryFormatStr
syntax match   muttrcVarEqualsSmimeFmt        contained skipwhite "=" nextgroup=muttrcSmimeFormatStr
syntax match   muttrcVarEqualsStatusFmt       contained skipwhite "=" nextgroup=muttrcStatusFormatStr
syntax match   muttrcVarEqualsStrftimeFmt     contained skipwhite "=" nextgroup=muttrcStrftimeFormatStr
syntax match   muttrcVariable                 contained "\\\@<![a-zA-Z_-]*\$[a-zA-Z_-]\+" contains=muttrcVariableInner
syntax match   muttrcVariableInner            contained "\$[a-zA-Z_-]\+"
syntax match   muttrcVarStr                   contained skipwhite 'my_[a-zA-Z0-9_]\+' nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax match   muttrcVPrefix                  contained /[?&]/ nextgroup=muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syntax region  muttrcAddrContent              contained start=+"+ end=+"\s*+ skip=+\\"+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syntax region  muttrcAddrContent              contained start=+'+ end=+'\s*+ skip=+\\'+ skipwhite contains=muttrcEmail nextgroup=muttrcAddrContent
syntax region  muttrcAliasFormatStr           contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcAliasFormatStr           contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAliasFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcAliasName                contained matchgroup=Type start=/(/ end=/)/ skipwhite
syntax region  muttrcAlternatesLine           keepend start=+^\s*\%(un\)\?alternates\s+ skip=+\\$+ end=+$+ contains=muttrcAlternateKeyword,muttrcGroupDef,muttrcRXPat,muttrcUnHighlightSpace,muttrcComment
syntax region  muttrcAttachFormatStr          contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcAttachFormatStr          contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcAttachFormatEscapes,muttrcAttachFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcColorLine                keepend skipwhite start=/\<color\s\+header\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordH,muttrcComment,muttrcUnHighlightSpace
syntax region  muttrcColorLine                keepend skipwhite start=/\<color\s\+index\>/ skip=+\\$+ end=+$+ contains=muttrcColorKeywordI,muttrcComment,muttrcUnHighlightSpace
syntax region  muttrcColorLine                keepend start=/^\s*color\s\+index_\%(author\|collapsed\|date\|flags\|label\|number\|size\|subject\)/ skip=+\\$+ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace
syntax region  muttrcColorLine                keepend start=/^\s*color\s\+\%(index\|header\)\@!/ skip=+\\$+ end=+$+ contains=muttrcColorKeyword,muttrcComment,muttrcUnHighlightSpace
syntax region  muttrcColorRXPat               contained start=+\s*"+ skip=+\\"+ end=+"\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syntax region  muttrcColorRXPat               contained start=+\s*'+ skip=+\\'+ end=+'\s*+ keepend skipwhite contains=muttrcRXString2 nextgroup=muttrcColorMatchCount,muttrcColorMatchCountNL
syntax region  muttrcComposeFormatStr         contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcComposeFormatStr         contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcComposeFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcFolderFormatStr          contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcFolderFormatStr          contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcFolderFormatEscapes,muttrcFolderFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcGroupDef                 contained start="-group\s\+" skip="\\$" end="\s" skipwhite keepend contains=muttrcGroupFlag,muttrcUnHighlightSpace
syntax region  muttrcGroupLine                keepend start=+^\s*\%(un\)\?group\s+ skip=+\\$+ end=+$+ contains=muttrcGroupKeyword,muttrcGroupDef,muttrcAddrDef,muttrcRXDef,muttrcUnHighlightSpace,muttrcComment
syntax region  muttrcIndexFormatStr           contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcIndexFormatStr           contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcIndexFormatEscapes,muttrcIndexFormatConditionals,muttrcFormatErrors,muttrcTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcKey                      contained start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=muttrcKeySpecial,muttrcKeyName
syntax region  muttrcKey                      contained start=+'+ skip=+\\\\\|\\'+ end=+'+ contains=muttrcKeySpecial,muttrcKeyName
syntax region  muttrcMacroBody                contained skipwhite start="\S" skip='\\ \|\\$' end=' \|$' contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcCommand,muttrcAction nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syntax region  muttrcMacroBody                matchgroup=Type contained skipwhite start=+"+ms=e skip=+\\"+ end=+"\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syntax region  muttrcMacroBody                matchgroup=Type contained skipwhite start=+'+ms=e skip=+\\'+ end=+'\|\%(\%(\\\\\)\@<!$\)+me=s contains=muttrcEscape,muttrcSet,muttrcUnset,muttrcReset,muttrcToggle,muttrcSpam,muttrcNoSpam,muttrcCommand,muttrcAction,muttrcVariable nextgroup=muttrcMacroDescr,muttrcMacroDescrNL
syntax region  muttrcMacroDescr               contained keepend skipwhite start=+"+ms=e skip=+\\"+ end=+"+me=s
syntax region  muttrcMacroDescr               contained keepend skipwhite start=+'+ms=e skip=+\\'+ end=+'+me=s
syntax region  muttrcMacroDescr               contained keepend skipwhite start=+\s*\S+ms=e skip=+\\ + end=+ \|$+me=s
syntax region  muttrcMixFormatStr             contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcMixFormatStr             contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcMixFormatEscapes,muttrcMixFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcNoSpamPattern            contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern
syntax region  muttrcNoSpamPattern            contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern
syntax region  muttrcOptPattern               contained keepend skipwhite start=+[~](+ end=+)+ skip=+\\)+ contains=muttrcSimplePat nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcOptPattern               contained matchgroup=Type keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcOptSimplePat,muttrcUnHighlightSpace nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcOptPattern               contained matchgroup=Type keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcOptSimplePat,muttrcUnHighlightSpace nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcPattern                  contained keepend skipwhite start=+[~](+ end=+)+ skip=+\\)+ contains=muttrcSimplePat
syntax region  muttrcPattern                  contained matchgroup=Type keepend skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syntax region  muttrcPattern                  contained matchgroup=Type keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syntax region  muttrcPatternInner             contained keepend start=+"[~=%!(^]+ms=s+1 skip=+\\"+ end=+"+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syntax region  muttrcPatternInner             contained keepend start=+'[~=%!(^]+ms=s+1 skip=+\\'+ end=+'+me=e-1 contains=muttrcSimplePat,muttrcUnHighlightSpace,muttrcSimplePatMetas
syntax region  muttrcPGPCmdFormatStr          contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPCmdFormatStr          contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPCmdFormatEscapes,muttrcPGPCmdFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPFormatStr             contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPFormatStr             contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPFormatEscapes,muttrcPGPFormatConditionals,muttrcFormatErrors,muttrcPGPTimeEscapes nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPGetKeysFormatStr      contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPGetKeysFormatStr      contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPGPGetKeysFormatEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcPGPTimeEscapes           contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes
syntax region  muttrcQueryFormatStr           contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcQueryFormatEscapes,muttrcQueryFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcRXHookString             contained keepend matchgroup=muttrcRXChars skipwhite start=+\^+ end=+$\s+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcRXHookString             contained keepend skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcRXHookString             contained keepend skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcRXHookString             contained keepend skipwhite start=+[^ "'^]+ skip=+\\\s+ end=+\s+re=e-1 contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcRXHookString             contained keepend skipwhite start=+\^+ end=+[^\\]\s+re=e-1 contains=muttrcRXString nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcRXPat                    contained keepend skipwhite start=+"+ skip=+\\"+ end=+"\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syntax region  muttrcRXPat                    contained keepend skipwhite start=+'+ skip=+\\'+ end=+'\s*+ contains=muttrcRXString nextgroup=muttrcRXPat
syntax region  muttrcRXString                 contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+$\s+ contains=muttrcRXChars
syntax region  muttrcRXString                 contained matchgroup=muttrcRXChars skipwhite start=+\^+ end=+[^\\]\s+re=e-1 contains=muttrcRXChars
syntax region  muttrcRXString                 contained skipwhite start=+"+ skip=+\\"+ end=+"+ contains=muttrcRXChars
syntax region  muttrcRXString                 contained skipwhite start=+'+ skip=+\\'+ end=+'+ contains=muttrcRXChars
syntax region  muttrcRXString                 contained skipwhite start=+[^ "'^]+ skip=+\\\s+ end=+\s+re=e-1 contains=muttrcRXChars
syntax region  muttrcRXString2                contained skipwhite start=+"+ skip=+\"+ end=+"+ contains=muttrcRXChars
syntax region  muttrcRXString2                contained skipwhite start=+'+ skip=+\'+ end=+'+ contains=muttrcRXChars
syntax region  muttrcSetStrAssignment         contained skipwhite keepend start=+=\s*"+hs=s+1 end=+"+ skip=+\\"+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syntax region  muttrcSetStrAssignment         contained skipwhite keepend start=+=\s*'+hs=s+1 end=+'+ skip=+\\'+ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr contains=muttrcString
syntax region  muttrcShellString              matchgroup=muttrcEscape keepend start=+`+ skip=+\\`+ end=+`+ contains=muttrcVarStr,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcCommand
syntax region  muttrcSimplePat                contained keepend start=+!\?\^\?[~](+ end=+)+ contains=muttrcSimplePat
syntax region  muttrcSimplePatRXContainer     contained keepend start=+"+ end=+"+ skip=+\\"+ contains=muttrcRXString
syntax region  muttrcSimplePatRXContainer     contained keepend start=+'+ end=+'+ skip=+\\'+ contains=muttrcRXString
syntax region  muttrcSimplePatRXContainer     contained keepend start=+[^ "']+ skip=+\\ + end=+\s+re=e-1 contains=muttrcRXString
syntax region  muttrcSimplePatString          contained keepend start=+"+ end=+"+ skip=+\\"+
syntax region  muttrcSimplePatString          contained keepend start=+'+ end=+'+ skip=+\\'+
syntax region  muttrcSimplePatString          contained keepend start=+[^ "']+ skip=+\\ + end=+\s+re=e-1
syntax region  muttrcSmimeFormatStr           contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcSmimeFormatStr           contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcSmimeFormatEscapes,muttrcSmimeFormatConditionals,muttrcVariable,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcSpamPattern              contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcSpamPattern              contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcPattern nextgroup=muttrcString,muttrcStringNL
syntax region  muttrcStatusFormatStr          contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcStatusFormatStr          contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStatusFormatEscapes,muttrcStatusFormatConditionals,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcStrftimeFormatStr        contained skipwhite keepend start=+"+ skip=+\\"+ end=+"+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcStrftimeFormatStr        contained skipwhite keepend start=+'+ skip=+\\'+ end=+'+ contains=muttrcStrftimeEscapes,muttrcFormatErrors nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr
syntax region  muttrcString                   contained keepend start=+"+ms=e skip=+\\"+ end=+"+ contains=muttrcEscape,muttrcCommand,muttrcAction,muttrcShellString
syntax region  muttrcString                   contained keepend start=+'+ms=e skip=+\\'+ end=+'+ contains=muttrcEscape,muttrcCommand,muttrcAction
syntax region  muttrcTimeEscapes              contained start=+%(+ end=+)+ contains=muttrcStrftimeEscapes
syntax region  muttrcTimeEscapes              contained start=+%<+ end=+>+ contains=muttrcStrftimeEscapes
syntax region  muttrcTimeEscapes              contained start=+%\[+ end=+\]+ contains=muttrcStrftimeEscapes
syntax region  muttrcTimeEscapes              contained start=+%{+ end=+}+ contains=muttrcStrftimeEscapes
syntax region  muttrcUnColorLine              keepend start=+^\s*uncolor\s+ skip=+\\$+ end=+$+ contains=muttrcUnColorKeyword,muttrcComment,muttrcUnHighlightSpace
syntax region  muttrcUnColorPatterns          contained skipwhite start=+\s*"+ end=+"+ skip=+\\"+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL
syntax region  muttrcUnColorPatterns          contained skipwhite start=+\s*'+ end=+'+ skip=+\\'+ contains=muttrcPattern nextgroup=muttrcUnColorPatterns,muttrcUnColorPatNL

