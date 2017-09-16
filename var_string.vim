" neomutt string config variables

syn keyword muttrcVarStr contained skipwhite
	\ assumed_charset attach_charset attach_sep attribution_locale charset
	\ config_charset content_type default_hook dsn_notify dsn_return
	\ empty_subject escape forward_attribution_intro
	\ forward_attribution_trailer forward_format header_cache_pagesize
	\ hostname imap_authenticators imap_delim_chars imap_headers imap_login
	\ imap_pass imap_user indent_string mailcap_path mark_macro_prefix
	\ mh_seq_flagged mh_seq_replied mh_seq_unseen mime_type_query_command
	\ newsgroups_charset news_server nm_default_uri nm_exclude_tags
	\ nm_hidden_tags nm_query_type nm_query_window_current_search
	\ nm_query_window_timebase nm_record_tags nm_unread_tag
	\ nntp_authenticators nntp_pass nntp_user pgp_self_encrypt_as
	\ pgp_sign_as pipe_sep pop_authenticators pop_host pop_pass pop_user
	\ postpone_encrypt_as post_indent_string preconnect realname
	\ send_charset show_multipart_alternative sidebar_delim_chars
	\ sidebar_divider_char sidebar_indent_string simple_search
	\ smime_default_key smime_encrypt_with smime_self_encrypt_as
	\ smime_sign_digest_alg smtp_authenticators smtp_pass smtp_url
	\ spam_separator ssl_ciphers tunnel xlabel_delimiter
	\ nextgroup=muttrcSetStrAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarStr contained skipwhite alias_format
	\ nextgroup=muttrcVarEqualsAliasFmt
syn keyword muttrcVarStr contained skipwhite attach_format
	\ nextgroup=muttrcVarEqualsAttachFmt
syn keyword muttrcVarStr contained skipwhite compose_format
	\ nextgroup=muttrcVarEqualsComposeFmt
syn keyword muttrcVarStr contained skipwhite folder_format
	\ nextgroup=muttrcVarEqualsFolderFmt
syn keyword muttrcVarStr contained skipwhite attribution group_index_format index_format message_format pager_format sidebar_format vfolder_format
	\ nextgroup=muttrcVarEqualsIdxFmt
syn keyword muttrcVarStr contained skipwhite mix_entry_format
	\ nextgroup=muttrcVarEqualsMixFmt
syn keyword muttrcVarStr contained skipwhite pgp_clearsign_command pgp_decode_command pgp_decrypt_command pgp_encrypt_only_command pgp_encrypt_sign_command pgp_export_command pgp_import_command pgp_list_pubring_command pgp_list_secring_command pgp_sign_command pgp_verify_command pgp_verify_key_command
	\ nextgroup=muttrcVarEqualsPGPCmdFmt
syn keyword muttrcVarStr contained skipwhite pgp_entry_format
	\ nextgroup=muttrcVarEqualsPGPFmt
syn keyword muttrcVarStr contained skipwhite pgp_getkeys_command
	\ nextgroup=muttrcVarEqualsPGPGetKeysFmt
syn keyword muttrcVarStr contained skipwhite query_format
	\ nextgroup=muttrcVarEqualsQueryFmt
syn keyword muttrcVarStr contained skipwhite smime_decrypt_command smime_encrypt_command smime_get_cert_command smime_get_cert_email_command smime_get_signer_cert_command smime_import_cert_command smime_pk7out_command smime_sign_command smime_verify_command smime_verify_opaque_command
	\ nextgroup=muttrcVarEqualsSmimeFmt
syn keyword muttrcVarStr contained skipwhite ts_icon_format ts_status_format status_format
	\ nextgroup=muttrcVarEqualsStatusFmt
syn keyword muttrcVarStr contained skipwhite date_format
	\ nextgroup=muttrcVarEqualsStrftimeFmt

syn match muttrcVarEqualsIdxFmt        contained skipwhite "=" nextgroup=muttrcIndexFormatStr
syn match muttrcVarEqualsAliasFmt      contained skipwhite "=" nextgroup=muttrcAliasFormatStr
syn match muttrcVarEqualsAttachFmt     contained skipwhite "=" nextgroup=muttrcAttachFormatStr
syn match muttrcVarEqualsComposeFmt    contained skipwhite "=" nextgroup=muttrcComposeFormatStr
syn match muttrcVarEqualsFolderFmt     contained skipwhite "=" nextgroup=muttrcFolderFormatStr
syn match muttrcVarEqualsMixFmt        contained skipwhite "=" nextgroup=muttrcMixFormatStr
syn match muttrcVarEqualsPGPFmt        contained skipwhite "=" nextgroup=muttrcPGPFormatStr
syn match muttrcVarEqualsQueryFmt      contained skipwhite "=" nextgroup=muttrcQueryFormatStr
syn match muttrcVarEqualsPGPCmdFmt     contained skipwhite "=" nextgroup=muttrcPGPCmdFormatStr
syn match muttrcVarEqualsStatusFmt     contained skipwhite "=" nextgroup=muttrcStatusFormatStr
syn match muttrcVarEqualsPGPGetKeysFmt contained skipwhite "=" nextgroup=muttrcPGPGetKeysFormatStr
syn match muttrcVarEqualsSmimeFmt      contained skipwhite "=" nextgroup=muttrcSmimeFormatStr
syn match muttrcVarEqualsStrftimeFmt   contained skipwhite "=" nextgroup=muttrcStrftimeFormatStr

" vim: syn=vim ts=8 sw=8 noet tw=0
