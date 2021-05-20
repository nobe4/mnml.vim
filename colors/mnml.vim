" Useful function to get the current group
" :let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

" Save the Gruvbox colors for the Gui
"        0 black,  1 red,     2 green,   3 yellow,   4 blue,    5 magenta,   6 cyan,    7 white
"        8 lblack, 9 lred,    10 lgreen, 11 lyellow, 12 lblue,  13 lmagenta, 14 lcyan,  15 lwhite
let s:gui_colors = [
			\ '#1d1f21', '#cc342b', '#14B363', '#fba922',  '#3971ed', '#a36ac7',   '#3971ed', '#c5c8c6',
			\ '#969896', '#cc342b', '#14B363', '#fba922',  '#3971ed', '#a36ac7',   '#3971ed', '#ffffff'
			\ ]

" Wrapper to ease the highlight creation
" (will not impact the load time)
function! s:highlight_wrapper(hi)
	execute 'highlight ' .a:hi[0]               .
				\ ' term='     .a:hi[1]               .' cterm='   .a:hi[1]               .
				\ ' ctermfg='  .a:hi[2]               .' ctermbg=' .a:hi[3]               .
				\ ' guifg='    .s:gui_colors[a:hi[2]] .' guibg='   .s:gui_colors[a:hi[3]] .
				\ ' gui=' a:hi[1]
endfunction

" Vim UI
let s:highlights = [
			\ ['ColorColumn',             'NONE',      'NONE', 9],
			\ ['Conceal',                 'NONE',      15,     0],
			\ ['Cursor',                  'NONE',      0,      15],
			\ ['CursorColumn',            'reverse',   15,     0],
			\ ['CursorLine',              'reverse',   15,     0],
			\ ['CursorLineNr',            'NONE',      'NONE', 0],
			\ ['DiffAdd',                 'NONE',      2,      0],
			\ ['DiffAdded',               'NONE',      2,      0],
			\ ['DiffChange',              'NONE',      4,      0],
			\ ['DiffDelete',              'NONE',      1,      0],
			\ ['DiffRemoved',             'NONE',      1,      0],
			\ ['DiffText',                'NONE',      3,      0],
			\ ['Directory',               'NONE',      4,      0],
			\ ['EndOfBuffer',             'NONE',      8,      0],
			\ ['Error',                   'NONE',      1,      15],
			\ ['ErrorMsg',                'NONE',      15,     1],
			\ ['FoldColumn',              'NONE',      7,      0],
			\ ['Folded',                  'NONE',      8,      0],
			\ ['IncSearch',               'NONE',      0,      12],
			\ ['LineNr',                  'NONE',      8,      0],
			\ ['MatchParen',              'NONE',      4,      0],
			\ ['ModeMsg',                 'NONE',      7,      0],
			\ ['MoreMsg',                 'NONE',      12,     0],
			\ ['NonText',                 'NONE',      8,      0],
			\ ['Normal',                  'NONE',      15,     0],
			\ ['Pmenu',                   'NONE',      'NONE', 8],
			\ ['PmenuSbar',               'NONE',      'NONE', 7],
			\ ['PmenuSel',                'NONE',      'NONE', 4],
			\ ['PmenuThumb',              'NONE',      'NONE', 8],
			\ ['Question',                'NONE',      4,      0],
			\ ['Search',                  'underline', 12,     0],
			\ ['SignColumn',              'NONE',      7,      0],
			\ ['SpecialKey',              'NONE',      8,      0],
			\ ['SpellBad',                'underline', 1,      0],
			\ ['SpellCap',                'underline', 1,      0],
			\ ['SpellLocal',              'underline', 1,      0],
			\ ['SpellRare',               'underline', 1,      0],
			\ ['StatusLine',              'NONE',      0,      7],
			\ ['StatusLineNC',            'NONE',      0,      8],
			\ ['TabLine',                 'NONE',      15,     0],
			\ ['TabLineFill',             'NONE',      15,     0],
			\ ['TabLineSel',              'NONE',      0,      15],
			\ ['Title',                   'NONE',      4,      0],
			\ ['VertSplit',               'NONE',      'NONE', 8],
			\ ['Visual',                  'reverse',   15,     0],
			\ ['WarningMsg',              'NONE',      'NONE', 1],
			\ ['WildMenu',                'NONE',      0,      6],
			\ ]

" Syntax
let s:highlights += [
			\ ['Boolean',                 'NONE',      15,     0],
			\ ['Character',               'NONE',      15,     0],
			\ ['Comment',                 'NONE',      8,      0],
			\ ['Conditional',             'NONE',      15,     0],
			\ ['Constant',                'NONE',      15,     0],
			\ ['Debug',                   'NONE',      15,     0],
			\ ['Define',                  'NONE',      15,     0],
			\ ['Delimiter',               'NONE',      15,     0],
			\ ['Directive',               'NONE',      15,     0],
			\ ['Exception',               'NONE',      15,     0],
			\ ['Float',                   'NONE',      15,     0],
			\ ['Format',                  'NONE',      15,     0],
			\ ['Function',                'NONE',      15,     0],
			\ ['Identifier',              'NONE',      15,     0],
			\ ['Ignore',                  'NONE',      9,      0],
			\ ['Include',                 'NONE',      15,     0],
			\ ['Keyword',                 'NONE',      15,     0],
			\ ['Label',                   'NONE',      15,     0],
			\ ['Macro',                   'NONE',      15,     0],
			\ ['Number',                  'NONE',      15,     0],
			\ ['Operator',                'NONE',      15,     0],
			\ ['PreCondit',               'NONE',      15,     0],
			\ ['PreProc',                 'NONE',      15,     0],
			\ ['Repeat',                  'NONE',      15,     0],
			\ ['Special',                 'NONE',      15,     0],
			\ ['SpecialChar',             'NONE',      15,     0],
			\ ['SpecialComment',          'NONE',      15,     0],
			\ ['Statement',               'NONE',      15,     0],
			\ ['StorageClass',            'NONE',      15,     0],
			\ ['String',                  'NONE',      15,     0],
			\ ['Structure',               'NONE',      15,     0],
			\ ['Tag',                     'NONE',      15,     0],
			\ ['Todo',                    'NONE',      6,      0],
			\ ['Type',                    'NONE',      15,     0],
			\ ['Typedef',                 'NONE',      15,     0],
			\ ['Underlined',              'NONE',      15,     0],
			\ ['htmlBold',                'NONE',      15,     0],
			\ ['htmlBoldUnderline',       'NONE',      15,     0],
			\ ['htmlBoldUnderlineItalic', 'NONE',      15,     0],
			\ ['htmlH1',                  'NONE',      15,     0],
			\ ['htmlH2',                  'NONE',      15,     0],
			\ ['htmlH3',                  'NONE',      15,     0],
			\ ['htmlH4',                  'NONE',      15,     0],
			\ ['htmlH5',                  'NONE',      15,     0],
			\ ['htmlH6',                  'NONE',      15,     0],
			\ ['htmlItalic',              'NONE',      15,     0],
			\ ['htmlTitle',               'NONE',      15,     0],
			\ ['htmlUnderline',           'NONE',      15,     0],
			\ ['htmlUnderlineItalic',     'NONE',      15,     0],
			\ ['markdownCode',            'NONE',      7,      0],
			\ ['markdownCodeBlock',       'NONE',      7,      0],
			\ ['markdownCodeDelimiter',   'NONE',      7,      0],
			\ ['markdownHeadingRule',     'NONE',      4,      0],
			\ ['markdownH1Delimiter',     'NONE',      4,      0],
			\ ['markdownH2Delimiter',     'NONE',      4,      0],
			\ ['markdownH3Delimiter',     'NONE',      4,      0],
			\ ['markdownH4Delimiter',     'NONE',      4,      0],
			\ ['markdownH5Delimiter',     'NONE',      4,      0],
			\ ['markdownH6Delimiter',     'NONE',      4,      0],
			\ ]

" Setup the colors
for hi in s:highlights
	call <SID>highlight_wrapper(hi)
endfor

" Name the current colorscheme
let g:colors_name = "mnml"
