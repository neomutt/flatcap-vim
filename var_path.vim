" neomutt path config variables

syn keyword muttrcVarPath contained skipwhite
	\ alias_file certificate_file debug_file display_filter editor
	\ entropy_file folder header_cache history_file inews ispell mbox
	\ message_cachedir mixmaster newsrc news_cache_dir new_mail_command
	\ pager postponed print_command query_command record sendmail shell
	\ signature smime_ca_location smime_certificates smime_keys spoolfile
	\ ssl_ca_certificates_file ssl_client_cert tmpdir trash visual

hi def link muttrcVarPath muttrcVarStr

" vim: syn=vim ts=8 sw=8 noet tw=0
