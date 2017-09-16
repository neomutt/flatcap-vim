" neomutt quad config variables
" For each variable X: X, noX and invX are defined
" Note: the nextgroup's are different -- I think they should be the same

syn keyword muttrcVarQuad skipwhite contained
	\ abort_noattach abort_nosubject abort_unmodified bounce
	\ catchup_newsgroup copy crypt_verify_sig delete fcc_attach
	\ followup_to_poster forward_edit honor_followup_to include mime_forward
	\ mime_forward_rest move pgp_encrypt_self pgp_mime_auto pop_delete
	\ pop_reconnect postpone post_moderated print quit recall reply_to
	\ smime_encrypt_self ssl_starttls
	\ nextgroup=muttrcSetQuadAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad skipwhite contained
	\ noabort_noattach noabort_nosubject noabort_unmodified nobounce
	\ nocatchup_newsgroup nocopy nocrypt_verify_sig nodelete nofcc_attach
	\ nofollowup_to_poster noforward_edit nohonor_followup_to noinclude nomime_forward
	\ nomime_forward_rest nomove nopgp_encrypt_self nopgp_mime_auto nopop_delete
	\ nopop_reconnect nopostpone nopost_moderated noprint noquit norecall noreply_to
	\ nosmime_encrypt_self nossl_starttls
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

syn keyword muttrcVarQuad skipwhite contained
	\ invabort_noattach invabort_nosubject invabort_unmodified invbounce
	\ invcatchup_newsgroup invcopy invcrypt_verify_sig invdelete invfcc_attach
	\ invfollowup_to_poster invforward_edit invhonor_followup_to invinclude invmime_forward
	\ invmime_forward_rest invmove invpgp_encrypt_self invpgp_mime_auto invpop_delete
	\ invpop_reconnect invpostpone invpost_moderated invprint invquit invrecall invreply_to
	\ invsmime_encrypt_self invssl_starttls
	\ nextgroup=muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" vim: syn=vim ts=8 sw=8 noet tw=0
