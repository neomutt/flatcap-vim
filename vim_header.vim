" Vim syntax file
" Language:	Mutt setup files
" Original:	Preben 'Peppe' Guldberg <peppe-vim@wielders.org>
" Maintainer:	Kyle Wheeler <kyle-muttrc.vim@memoryhole.net>
" Last Change:	18 August 2016

" This file covers mutt version 1.7.0 and NeoMutt 20170306

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

" Set the keyword characters
setlocal isk=@,48-57,_,-

