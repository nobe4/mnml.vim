" Wrapper to ease the highlight creation
" (will not impact the load time)
function! s:highlight_wrapper(hi)
  execute 'highlight '. a:hi[0] .
        \ ' term='    . a:hi[1] . ' cterm='   . a:hi[2] .
        \ ' ctermfg=' . a:hi[3] . ' ctermbg=' . a:hi[4]
endfunction

" Vim UI
let s:highlights = [
      \ ['ColorColumn', 'NONE', 'NONE', 'NONE', 9],
      \ ['Conceal', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Cursor', 'NONE', 'NONE', 1, 2],
      \ ['CursorColumn', 'reverse', 'reverse', 'NONE', 'NONE'],
      \ ['CursorLine', 'reverse', 'reverse', 'NONE', 'NONE'],
      \ ['CursorLineNr', 'NONE', 'NONE', 'NONE', 0],
      \ ['DiffAdd', 'NONE', 'NONE', 2, 'NONE'],
      \ ['DiffChange', 'NONE', 'NONE', 4, 'NONE'],
      \ ['DiffDelete', 'NONE', 'NONE', 1, 'NONE'],
      \ ['DiffText', 'NONE', 'NONE', 3, 'NONE'],
      \ ['Directory', 'NONE', 'NONE', 4, 'NONE'],
      \ ['EndOfBuffer', 'NONE', 'NONE', 8, 'NONE'],
      \ ['Error', 'NONE', 'NONE', 1, 'NONE'],
      \ ['ErrorMsg', 'NONE', 'NONE', 'NONE', 1],
      \ ['FoldColumn', 'NONE', 'NONE', 7, 'NONE'],
      \ ['Folded', 'NONE', 'NONE', 8, 'NONE'],
      \ ['IncSearch', 'NONE', 'NONE', 0, 12],
      \ ['LineNr', 'NONE', 'NONE', 8, 'NONE'],
      \ ['MatchParen', 'NONE', 'NONE', 4, 'NONE'],
      \ ['ModeMsg', 'NONE', 'NONE', 7, 'NONE'],
      \ ['MoreMsg', 'NONE', 'NONE', 12, 'NONE'],
      \ ['NonText', 'NONE', 'NONE', 7, 'NONE'],
      \ ['Normal', 'NONE', 'NONE', 15, 0],
      \ ['Pmenu', 'NONE', 'NONE', 'NONE', 8],
      \ ['PmenuSbar', 'NONE', 'NONE', 'NONE', 7],
      \ ['PmenuSel', 'NONE', 'NONE', 'NONE', 4],
      \ ['PmenuThumb', 'NONE', 'NONE', 'NONE', 8],
      \ ['Question', 'NONE', 'NONE', 4, 'NONE'],
      \ ['Search', 'NONE', 'NONE', 0, 12],
      \ ['SignColumn', 'NONE', 'NONE', 7, 'NONE'],
      \ ['SpecialKey', 'NONE', 'NONE', 4, 'NONE'],
      \ ['SpellBad', 'underline', 'underline', 1, 'NONE'],
      \ ['SpellCap', 'underline', 'underline', 1, 'NONE'],
      \ ['SpellLocal', 'underline', 'underline', 1, 'NONE'],
      \ ['SpellRare', 'underline', 'underline', 1, 'NONE'],
      \ ['StatusLine', 'NONE', 'NONE', 0, 7],
      \ ['StatusLineNC', 'NONE', 'NONE', 0, 8],
      \ ['TabLine', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['TabLineFill', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['TabLineSel', 'NONE', 'NONE', 0, 15],
      \ ['Title', 'NONE', 'NONE', 4, 'NONE'],
      \ ['VertSplit', 'NONE', 'NONE', 'NONE', 8],
      \ ['Visual', 'reverse', 'reverse', 'NONE', 'NONE'],
      \ ['WarningMsg', 'NONE', 'NONE', 'NONE', 1],
      \ ['WildMenu', 'NONE', 'NONE', 0, 6],
      \ ]

" Syntax
let s:highlights += [
      \ ['Boolean', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Character', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Comment', 'NONE', 'NONE', 8, 'NONE'],
      \ ['Conditional', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Constant', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Debug', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Define', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Delimiter', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Directive', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Exception', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Float', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Format', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Function', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Identifier', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Ignore', 'NONE', 'NONE', 9, 'NONE'],
      \ ['Include', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Keyword', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Label', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Macro', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Number', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Operator', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['PreCondit', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['PreProc', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Repeat', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Special', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['SpecialChar', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['SpecialComment', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Statement', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['StorageClass', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['String', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Structure', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Tag', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Todo', 'NONE', 'NONE', 6, 'NONE'],
      \ ['Type', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Typedef', 'NONE', 'NONE', 'NONE', 'NONE'],
      \ ['Underlined', 'NONE', 'NONE', 'NONE', 'NONE']
      \ ]

" Setup the colors
for hi in s:highlights
  call <SID>highlight_wrapper(hi)
endfor
