" Useful function to get the current group
" :let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

" Save the Gruvbox colors for the Gui
let s:gui_colors = [
			\ '#353535','#d83925','#a8a521','#e0a82a',
			\ '#54969a','#c07998','#7aab7d','#c9bba4',
			\ '#8f8277','#fe6143','#c4c431','#fcc73c',
			\ '#94b3a8','#dd9aab','#9ec98e','#efe1bf'
			\ ]

" Wrapper to ease the highlight creation
" (will not impact the load time)
function! s:highlight_wrapper(hi)
	execute 'highlight ' .a:hi[0]               .
				\ ' term='     .a:hi[1]               .' cterm='   .a:hi[2]               .
				\ ' ctermfg='  .a:hi[3]               .' ctermbg=' .a:hi[4]               .
				\ ' guifg='    .s:gui_colors[a:hi[3]] .' guibg='   .s:gui_colors[a:hi[4]] .
				\ ' gui=' a:hi[1]
endfunction

" Vim UI
let s:highlights = [
			\ ['ColorColumn',  'NONE',      'NONE',      'NONE', 9],
			\ ['Conceal',      'NONE',      'NONE',      15,     0],
			\ ['Cursor',       'NONE',      'NONE',      0,      15],
			\ ['CursorColumn', 'reverse',   'reverse',   15,     0],
			\ ['CursorLine',   'reverse',   'reverse',   15,     0],
			\ ['CursorLineNr', 'NONE',      'NONE',      'NONE', 0],
			\ ['DiffAdd',      'NONE',      'NONE',      2,      0],
			\ ['DiffAdded',    'NONE',      'NONE',      2,      0],
			\ ['DiffChange',   'NONE',      'NONE',      4,      0],
			\ ['DiffDelete',   'NONE',      'NONE',      1,      0],
			\ ['DiffRemoved',  'NONE',      'NONE',      1,      0],
			\ ['DiffText',     'NONE',      'NONE',      3,      0],
			\ ['Directory',    'NONE',      'NONE',      4,      0],
			\ ['EndOfBuffer',  'NONE',      'NONE',      8,      0],
			\ ['Error',        'NONE',      'NONE',      1,      15],
			\ ['ErrorMsg',     'NONE',      'NONE',      15,     1],
			\ ['FoldColumn',   'NONE',      'NONE',      7,      0],
			\ ['Folded',       'NONE',      'NONE',      8,      0],
			\ ['IncSearch',    'NONE',      'NONE',      0,      12],
			\ ['LineNr',       'NONE',      'NONE',      8,      0],
			\ ['MatchParen',   'NONE',      'NONE',      4,      0],
			\ ['ModeMsg',      'NONE',      'NONE',      7,      0],
			\ ['MoreMsg',      'NONE',      'NONE',      12,     0],
			\ ['NonText',      'NONE',      'NONE',      8,      0],
			\ ['Normal',       'NONE',      'NONE',      15,     0],
			\ ['Pmenu',        'NONE',      'NONE',      'NONE', 8],
			\ ['PmenuSbar',    'NONE',      'NONE',      'NONE', 7],
			\ ['PmenuSel',     'NONE',      'NONE',      'NONE', 4],
			\ ['PmenuThumb',   'NONE',      'NONE',      'NONE', 8],
			\ ['Question',     'NONE',      'NONE',      4,      0],
			\ ['Search',       'underline', 'underline', 12,     0],
			\ ['SignColumn',   'NONE',      'NONE',      7,      0],
			\ ['SpecialKey',   'NONE',      'NONE',      8,      0],
			\ ['SpellBad',     'underline', 'underline', 1,      0],
			\ ['SpellCap',     'underline', 'underline', 1,      0],
			\ ['SpellLocal',   'underline', 'underline', 1,      0],
			\ ['SpellRare',    'underline', 'underline', 1,      0],
			\ ['StatusLine',   'NONE',      'NONE',      0,      7],
			\ ['StatusLineNC', 'NONE',      'NONE',      0,      8],
			\ ['TabLine',      'NONE',      'NONE',      15,     0],
			\ ['TabLineFill',  'NONE',      'NONE',      15,     0],
			\ ['TabLineSel',   'NONE',      'NONE',      0,      15],
			\ ['Title',        'NONE',      'NONE',      4,      0],
			\ ['VertSplit',    'NONE',      'NONE',      'NONE', 8],
			\ ['Visual',       'reverse',   'reverse',   15,     0],
			\ ['WarningMsg',   'NONE',      'NONE',      'NONE', 1],
			\ ['WildMenu',     'NONE',      'NONE',      0,      6],
			\ ]

" Syntax
let s:highlights += [
			\ ['Boolean',                 'NONE', 'NONE', 15, 0],
			\ ['Character',               'NONE', 'NONE', 15, 0],
			\ ['Comment',                 'NONE', 'NONE', 8,  0],
			\ ['Conditional',             'NONE', 'NONE', 15, 0],
			\ ['Constant',                'NONE', 'NONE', 15, 0],
			\ ['Debug',                   'NONE', 'NONE', 15, 0],
			\ ['Define',                  'NONE', 'NONE', 15, 0],
			\ ['Delimiter',               'NONE', 'NONE', 15, 0],
			\ ['Directive',               'NONE', 'NONE', 15, 0],
			\ ['Exception',               'NONE', 'NONE', 15, 0],
			\ ['Float',                   'NONE', 'NONE', 15, 0],
			\ ['Format',                  'NONE', 'NONE', 15, 0],
			\ ['Function',                'NONE', 'NONE', 15, 0],
			\ ['Identifier',              'NONE', 'NONE', 15, 0],
			\ ['Ignore',                  'NONE', 'NONE', 9,  0],
			\ ['Include',                 'NONE', 'NONE', 15, 0],
			\ ['Keyword',                 'NONE', 'NONE', 15, 0],
			\ ['Label',                   'NONE', 'NONE', 15, 0],
			\ ['Macro',                   'NONE', 'NONE', 15, 0],
			\ ['Number',                  'NONE', 'NONE', 15, 0],
			\ ['Operator',                'NONE', 'NONE', 15, 0],
			\ ['PreCondit',               'NONE', 'NONE', 15, 0],
			\ ['PreProc',                 'NONE', 'NONE', 15, 0],
			\ ['Repeat',                  'NONE', 'NONE', 15, 0],
			\ ['Special',                 'NONE', 'NONE', 15, 0],
			\ ['SpecialChar',             'NONE', 'NONE', 15, 0],
			\ ['SpecialComment',          'NONE', 'NONE', 15, 0],
			\ ['Statement',               'NONE', 'NONE', 15, 0],
			\ ['StorageClass',            'NONE', 'NONE', 15, 0],
			\ ['String',                  'NONE', 'NONE', 15, 0],
			\ ['Structure',               'NONE', 'NONE', 15, 0],
			\ ['Tag',                     'NONE', 'NONE', 15, 0],
			\ ['Todo',                    'NONE', 'NONE', 6,  0],
			\ ['Type',                    'NONE', 'NONE', 15, 0],
			\ ['Typedef',                 'NONE', 'NONE', 15, 0],
			\ ['Underlined',              'NONE', 'NONE', 15, 0],
			\ ['htmlBold',                'NONE', 'NONE', 15, 0],
			\ ['htmlBoldUnderline',       'NONE', 'NONE', 15, 0],
			\ ['htmlBoldUnderlineItalic', 'NONE', 'NONE', 15, 0],
			\ ['htmlH1',                  'NONE', 'NONE', 15, 0],
			\ ['htmlH2',                  'NONE', 'NONE', 15, 0],
			\ ['htmlH3',                  'NONE', 'NONE', 15, 0],
			\ ['htmlH4',                  'NONE', 'NONE', 15, 0],
			\ ['htmlH5',                  'NONE', 'NONE', 15, 0],
			\ ['htmlH6',                  'NONE', 'NONE', 15, 0],
			\ ['htmlItalic',              'NONE', 'NONE', 15, 0],
			\ ['htmlItalic',              'NONE', 'NONE', 15, 0],
			\ ['htmlTitle',               'NONE', 'NONE', 15, 0],
			\ ['htmlUnderline',           'NONE', 'NONE', 15, 0],
			\ ['htmlUnderlineItalic',     'NONE', 'NONE', 15, 0]
			\ ]

" Setup the colors
for hi in s:highlights
	call <SID>highlight_wrapper(hi)
endfor

" Name the current colorscheme
let g:colors_name = "mnml"
