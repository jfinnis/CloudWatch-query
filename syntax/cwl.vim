" Vim syntax file
" Language: CloudWatch Logs Insights Query Language config file

if exists('b:current_syntax')
    finish
endif

let b:current_syntax = 'cwl'

let s:cpo_save = &cpo
set cpo&vim

syn region CloudWatchStringD start=+"+ end=+"\|$+
syn region CloudWatchStringS start=+'+ end=+'\|$+

syn keyword CloudWatchCommand
    \ dedup
    \ diff
    \ display
    \ fields
    \ filter
    \ filterIndex
    \ limit
    \ parse
    \ pattern
    \ sort
    \ stats
    \ unmask
    \ unnest
syn keyword CloudWatchOperator
    \ and
    \ like
    \ as
    \ by
    \ desc
syn keyword CloudWatchFunction
    \ count
    \ bin

syn match CloudWatchComment /#.*/ contains=@Spell
syn match CloudWatchDefaultField /@\w*/ " @timestamp, @message, etc
syn match CloudWatchRelTime /\<\d\+[smhdSMHD]\>/ "1h, 5m, etc

hi def link CloudWatchComment Comment
hi def link CloudWatchStringD String
hi def link CloudWatchStringS String
hi def link CloudWatchCommand Keyword
hi def link CloudWatchOperator Keyword
hi def link CloudWatchFunction Identifier
hi def link CloudWatchDefaultField Type
hi def link CloudWatchRelTime Number

let &cpo = s:cpo_save
unlet s:cpo_save
