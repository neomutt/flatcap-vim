" neomutt synonym config variables

syn keyword muttrcSynonym contained skipwhite
	\ edit_hdrs envelope_from forw_decode forw_decrypt forw_format
	\ forw_quote hdr_format indent_str mime_fwd msg_format pgp_autoencrypt
	\ pgp_autosign pgp_auto_traditional pgp_create_traditional
	\ pgp_replyencrypt pgp_replysign pgp_replysignencrypted pgp_verify_sig
	\ post_indent_str print_cmd smime_sign_as xterm_icon xterm_set_titles
	\ xterm_title

hi def link muttrcSynonym Error

" vim: syn=vim ts=8 sw=8 noet tw=0
