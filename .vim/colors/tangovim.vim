" @(#) ~/.vim/colors/tango.vim - Tango-style colors for vim
" @author	dMitry Alexandrov <mitry (at) mitry.spb.ru>
" @see		http://tango.freedesktop.org/
" @see		http://dumpz.org/2373/
" $Id: tango-mitry.vim,v 27b476a4c6f4 2012/10/21 06:59:09 mitry $
" ====================================

hi clear
if exists("syntax_on") | syntax reset | endif

let g:colors_name = expand('<sfile>:t:r')	" Set color name to name of this file
set background=light

" Highlighting Groups:				{{{1
hi Normal	guibg=white	guifg=#2E3436

" Visual Mode: selection (default => inverse)
hi Visual	guibg=#888A85	guifg=#EEEEEC

" Line Numbers: for :number and :# commands, and when 'number' option is set.
hi LineNr	guifg=#8F5902	guibg=#FCE94F

" Column Separating: vertically split windows
hi VertSplit	gui=NONE guifg=#888A85	guibg=#BABDB6

" Unprintable Characters: in the text, 'listchars'.
hi SpecialKey	guifg=#888A85
"// ~ and @ at the end of the window, characters from
hi NonText	guifg=#EEEEEC

" used for the columns set with 'colorcolumn'
hi ColorColumn ctermbg=lightgrey guibg=#EEEEEC

" Popup Menu:					{{{2
" Popup menu: normal item.
hi Pmenu	guifg=#555753	guibg=#FCE94F
" Popup menu: selected item.
hi PmenuSel	guifg=#EEEEEC	guibg=#888A85
" Popup menu: scrollbar.
hi PmenuSbar	guibg=#E9B96E
" Popup menu: Thumb of the scrollbar.
hi PmenuThumb	guifg=#C17D11

" Spell						{{{2
"hi SpellBad	" Word that is not recognized by the spellchecker
"hi SpellCap	" Word that should start with a capital.
"hi SpellLocal	" Word is used in another region
"hi SpellRare	" Hardly used word.

" Command Line:					{{{2

" 'showmode' message (e.g., '-- INSERT --')	{{{3
hi ModeMsg	guifg=#729FCF
hi MoreMsg	guifg=#73D216

" Errors And Messages:				{{{3
hi ErrorMsg	guibg=#CC0000	guifg=#EEEEEC
hi WarningMsg	guifg=#CC0000	guibg=#EDD400
"						}}}3

"// current match in 'wildmenu' completion
hi WildMenu	guibg=#729FCF	guifg=#EEEEEC

"// hit-enter prompt and yes/no questions
hi Question	guifg=#888A85

" ==============				}}}2
" Cursor:					{{{2
hi Cursor	guifg=#555753	guibg=#EF2929
"// the character under the cursor in lmap mode
hi lCursor	guifg=#555753	guibg=#3465A4

" Diff Mode:					{{{2
hi DiffAdd	guibg=slateBlue		guifg=black
hi DiffChange	guibg=antiqueWhite	guifg=black
hi DiffText	guibg=oliveDrab		guifg=black
hi DiffDelete	guibg=coral		guifg=black

" Folding:					{{{2
" hi Folded	guifg=#EEEEEC	guibg=#87AFD7	gui=Italic
hi Folded	guifg=#888A85	guibg=#DFEDFF	gui=Italic
hi FoldColumn	guifg=#EEEEEC	guibg=#BABDB6

" Searching:					{{{2
"// Last search pattern highlighting (see 'hlsearch' and 'quickfix')
hi Search	guifg=#555753	guibg=#FCE94F
"// 'incsearch' highlighting; also used for the text replaced with `:s///c`
hi IncSearch    guifg=#D3D7CF	guibg=#FCE94F

hi MatchParen	guifg=#8F5902	guibg=#FCE94F


" StatusLine:					{{{2
"// status line of current window
" hi StatusLine	gui=NONE guifg=Sys_MenuText	guibg=Sys_ScrollBar
hi StatusLine	gui=NONE guifg=#2E3436	guibg=#D3D7CF
"// status lines of not-current windows
hi StatusLineNC	gui=NONE guifg=#2E3436	guibg=#EEEEEC

hi User1 guifg=#3465A4		guibg=#D3D7CF
hi User2 guifg=#4E9A06		guibg=#D3D7CF
hi User3 guifg=#FCAF3E		guibg=#D3D7CF
hi User4 guifg=#CC0000		guibg=#D3D7CF

" ==============				}}}1
" Syntax:					{{{1

"// titles for output from `:set all`` `:autocmd` etc.
hi Title	guifg=#204A87	gui=bold
hi Subtitle	guifg=#3465A4	gui=bold,italic

"// directory names (and other special names in listings)
hi Directory	gui=bold	guifg=#204A87

" Comment:	any comment			{{{2
hi Comment	guifg=#C4A000	gui=italic
"hi Comment	guifg=chocolate gui=NONE font='Courier_New:h9:i:cRUSSIAN'

" Constant:	any constant			{{{2
" String	a string constant: "this is a string"
" Character	a character constant: 'c', '\n'
" Number	a number constant: 234, 0xff
" Boolean	a boolean constant: TRUE, false
" Float		a floating point constant: 2.3e10
hi Constant	guifg=#3465A4
hi String	guifg=#4E9A06
hi Character	guifg=#8AE234
hi Number	guifg=#729FCF

" Identifier:	any variable name		{{{2
" hi Identifier	guifg=#555753
hi Identifier	guifg=#5C3566

" Function	function name (also: methods for classes)
"hi Function	guifg=black gui=NONE
hi Function	guifg=#555753	gui=bold

" Statement:	any statement			{{{2
" Conditional	if, then, else, endif, switch, etc.
" Repeat	for, do, while, etc.
" Label		case, default, etc.
" Operator	'sizeof`, `+`, `*`, etc.
" Keyword	any other keyword
" Exception	try, catch, throw
hi Statement	guifg=#2E3436	gui=bold
hi Operator	guifg=#3465A4	gui=NONE
"hi Label	guifg=Black	gui=bold

" PreProc:	generic Preprocessor		{{{2
" Include	preprocessor #include
" Define	preprocessor #define
" Macro		same as Define
" PreCondit	preprocessor #if, #else, #endif, etc.
hi PreProc	guifg=#AD7FA8	guibg=NONE
hi cIf0		guifg=#75507B

" Type:		int, long, char, etc.		{{{2
" StorageClass	static, register, volatile, etc.
" Structure	struct, union, enum, etc.
" Typedef	A typedef
hi Type		guifg=#204A87	gui=bold

" Special:	any special symbol		{{{2
" SpecialChar	special character in a constant
" Tag		you can use CTRL-] on this
" Delimiter	character that needs attention
" SpecialComment	special things inside a comment
" Debug		debugging statements
hi Special	guifg=#888A85
hi Tag		guifg=#3465A4	gui=underline
hi SpecialComment gui=bold	guifg=#C17D11

" ==============				}}}2

" Underlined:	text that stands out, HTML links
hi Underlined	gui=underline guifg=NONE

" Ignore:	left blank, hidden
" hi Ignore	guifg=bg
hi Ignore	guifg=#EEEEEC

" Error:		any erroneous construct
hi Error	guibg=#EF2929	guifg=#EEEEEC	gui=underline

" Todo:		anything that needs extra attention (TODO FIXME and XXX)
hi Todo		guibg=#FCE94F	guifg=#F57900	gui=underline

hi Conceal	guifg=fg guibg=bg

" ==============				}}}1

"~ EOF // vim: fen:fdm=marker:fcl=all:fdl=0:fml=1:ts=8:ff=unix:
