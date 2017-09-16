" neomutt number config variables

syn keyword muttrcVarNum skipwhite contained
	\ connect_timeout debug_level history imap_keepalive imap_pipeline_depth
	\ imap_poll_timeout mail_check mail_check_stats_interval menu_context
	\ net_inc nm_db_limit nm_open_timeout nm_query_window_current_position
	\ nm_query_window_duration nntp_context nntp_poll pager_context
	\ pager_index_lines pgp_timeout pop_checkinterval read_inc reflow_wrap
	\ save_history score_threshold_delete score_threshold_flag
	\ score_threshold_read search_context sendmail_wait sidebar_width
	\ skip_quoted_offset sleep_time smime_timeout ssl_min_dh_prime_bits
	\ timeout time_inc wrap wrapmargin wrap_headers write_inc
	\ nextgroup=muttrcSetNumAssignment,muttrcVPrefix,muttrcVarBool,muttrcVarQuad,muttrcVarNum,muttrcVarStr

" vim: syn=vim ts=8 sw=8 noet tw=0
